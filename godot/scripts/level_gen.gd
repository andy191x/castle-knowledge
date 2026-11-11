class_name LevelGen
extends RefCounted
## Builds one castle floor, following the original's look (overhead view in the playthrough):
##  * rooms and hallways are rectangles (a hallway is one cell wide);
##  * rectangles may touch, but are always separated by a wall LINE on the shared cell edges;
##  * doors are cut into those shared wall edges, so they never stand in the middle of a room,
##    and crossing one moves you a single cell;
##  * stairs and Subadd's store sit in one-cell alcoves protruding outward from a room wall.
## Cells are 21 px (f2_0c6e); a level is 19 x 9 cells, so with a half-tile border of hatch it fits
## the overhead window (420 x 210) exactly.
## NOTE: the original's generator itself was not traced; this reproduces its rules as observed.

const W := 19
const H := 9

enum T { WALL, FLOOR, DOOR, LOCKED, STAIRS_DOWN, STAIRS_UP }   # WALL = solid rock (no room)
enum F { NONE, CHEST, FOUNTAIN, WELL, TREE, WIZARD, STORE, MAGIC_BOX, CRYSTAL, TOWER, VENDING }
enum E { OPEN, WALL, DOOR, LOCKED, STORE, STAIRS, TOWER }      # what lies on a cell edge

static func edge_key(a: Vector2i, b: Vector2i) -> String:
	if a.x < b.x or (a.x == b.x and a.y < b.y):
		return "%d,%d|%d,%d" % [a.x, a.y, b.x, b.y]
	return "%d,%d|%d,%d" % [b.x, b.y, a.x, a.y]

## Every floor must have its staircases (back to the previous floor and on to the next one):
## generate until both are placed.
static func generate(depth: int, rng: RandomNumberGenerator, crystal_index: int, max_depth: int) -> Dictionary:
	var lv: Dictionary = {}
	for attempt in 40:
		lv = _generate_once(depth, rng, crystal_index, max_depth, attempt >= 30)
		var ok_up: bool = depth <= 1 or _has_tile(lv, T.STAIRS_UP)
		var ok_down: bool = _has_tile(lv, T.STAIRS_DOWN)
		if ok_up and ok_down and _reachable(lv):
			return lv
	return lv

## The direction (GameState: 1=N 2=E 3=S 4=W) that faces away from cell b when standing on a.
static func _away_dir(a: Vector2i, b: Vector2i) -> int:
	var d: Vector2i = a - b
	var i: int = [Vector2i(0, -1), Vector2i(1, 0), Vector2i(0, 1), Vector2i(-1, 0)].find(d)
	return i + 1 if i >= 0 else 1

## There must be a way from where you arrive to the stairs on (through open edges, doors and locked
## doors): a breadth-first walk over the floor.
static func _reachable(lv: Dictionary) -> bool:
	var st: Array = lv["start"]
	var dn: Array = lv["down"]
	var start := Vector2i(int(st[0]), int(st[1]))
	var goal := Vector2i(int(dn[0]), int(dn[1]))
	if goal.x < 0:
		return false
	var room_of: Array = lv["room_of"]
	var edges: Dictionary = lv["edges"]
	var seen := {}
	var todo: Array = [start]
	while todo.size() > 0:
		var c: Vector2i = todo.pop_back()
		if c == goal:
			return true
		var k := "%d,%d" % [c.x, c.y]
		if seen.has(k):
			continue
		seen[k] = true
		for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
			var n: Vector2i = c + d
			if n.x < 0 or n.y < 0 or n.x >= W or n.y >= H or int(room_of[n.y][n.x]) < 0:
				continue
			var e := E.OPEN if int(room_of[n.y][n.x]) == int(room_of[c.y][c.x]) else int(edges.get(edge_key(c, n), E.WALL))
			if e == E.OPEN or e == E.DOOR or e == E.LOCKED:
				todo.append(n)
	return false

## Fills a laid-out floor as the original's f4_5d44 does, room by room.  First the monsters (f4_3e76:
## 35 % per room, never the room you start in).  Then each room: an item half the time (a tenth of them
## rations; otherwise item 1-71, with the early-floor limits of f6_349a); otherwise a gold pile 15 % of
## the time (random 1 .. 20 x floor); otherwise - only in a room without a monster - one special place,
## tried in this order: Muldiv's box (floor 8+, 15 %, two per game), Divsub's box (8+, 15 %, two),
## Vend-O-Matic (4+, 8 %), wizard (14+, 15 %, once), tree (16+, 15 %, once), fountain (18+, 15 %,
## once), chest (9+, 5 %), wishing well (7+, 4 %, two per game).  `placed` carries the per-game counts.
static func populate(lv: Dictionary, depth: int, rng: RandomNumberGenerator, placed: Dictionary) -> void:
	var rooms: Array = lv["rooms"]
	var kinds: Array = lv["kinds"]
	var st: Array = lv["start"]
	var first: int = int(lv["room_of"][int(st[1])][int(st[0])])
	var feats: Dictionary = lv["features"]
	var items: Dictionary = lv["items"]
	var mons: Array = lv["monsters"]
	if not lv.has("boxes"):
		lv["boxes"] = {}
	var with_monster := {}
	for rid in rooms.size():
		if str(kinds[rid]) == "alcove" or rid == first:
			continue
		if rng.randi_range(1, 100) > 65:
			var mc := _free_in(lv, rid, rng)
			if mc.x >= 0:
				mons.append(make_monster(depth, rng, mc))
				with_monster[rid] = true
	for rid in rooms.size():
		if str(kinds[rid]) == "alcove":
			continue
		var c := _free_in(lv, rid, rng)
		if c.x < 0:
			continue
		var key := "%d,%d" % [c.x, c.y]
		if rng.randi_range(1, 100) > 50:
			var it := _floor_item(depth, rng)
			if not it.is_empty():
				items[key] = it
			continue
		if rng.randi_range(1, 100) > 85:
			items[key] = {"kind": "gold", "amount": rng.randi_range(1, 20 * depth)}
			continue
		if with_monster.has(rid) or rid == first:
			continue
		var f := -1
		var box := 0
		if depth > 7 and rng.randi_range(1, 100) > 85 and int(placed.get("muldiv", 0)) < 2:
			f = F.MAGIC_BOX
			box = 1250
			placed["muldiv"] = int(placed.get("muldiv", 0)) + 1
		elif depth > 7 and rng.randi_range(1, 100) > 85 and int(placed.get("divsub", 0)) < 2:
			f = F.MAGIC_BOX
			box = 1260
			placed["divsub"] = int(placed.get("divsub", 0)) + 1
		elif depth > 3 and rng.randi_range(1, 100) > 92:
			f = F.VENDING
		elif depth > 13 and not bool(placed.get("wizard", false)) and rng.randi_range(1, 100) > 85:
			f = F.WIZARD
			placed["wizard"] = true
		elif depth > 15 and not bool(placed.get("tree", false)) and rng.randi_range(1, 100) > 85:
			f = F.TREE
			placed["tree"] = true
		elif depth > 17 and not bool(placed.get("fountain", false)) and rng.randi_range(1, 100) > 85:
			f = F.FOUNTAIN
			placed["fountain"] = true
		elif depth > 8 and rng.randi_range(1, 100) > 95:
			f = F.CHEST
		elif depth > 6 and rng.randi_range(1, 100) > 96 and int(placed.get("well", 0)) < 2:
			f = F.WELL
			placed["well"] = int(placed.get("well", 0)) + 1
		if f >= 0:
			feats[key] = f
			if box > 0:
				lv["boxes"][key] = box

## A floor item as the original rolls it: a ration one time in ten, otherwise item number 1-71 -
## potions 1-19, scrolls 20-41, wands 42-56, rings 57-61, helms 62-65, amulets 66-71 - and rings, helms
## and amulets that are too advanced for the floor are dropped (f6_349a).
static func _floor_item(depth: int, rng: RandomNumberGenerator) -> Dictionary:
	if rng.randi_range(1, 100) < 10:
		return {"kind": "food"}
	var code := rng.randi_range(1, 71)
	if code <= 19:
		return {"kind": "potion", "type": code - 1}
	if code <= 41:
		return {"kind": "scroll", "type": code - 20}
	if code <= 56:
		return {"kind": "wand", "type": code - 42, "charges": 1}
	if code <= 61:
		return {} if code - 56 > depth else {"kind": "ring", "type": code - 57}
	if code <= 65:
		return {} if 66 - code >= depth else {"kind": "helm", "type": code - 62}
	return {} if code - 66 > depth else {"kind": "amulet", "type": code - 66}

## A random free floor cell in a room (no feature, item or monster, not where you start), or (-1, -1).
static func _free_in(lv: Dictionary, rid: int, rng: RandomNumberGenerator) -> Vector2i:
	var r: Array = lv["rooms"][rid]
	var st: Array = lv["start"]
	var taken := {}
	for m in lv["monsters"]:
		taken["%d,%d" % [int(m["x"]), int(m["y"])]] = true
	var cands: Array = []
	for y in range(int(r[1]), int(r[1]) + int(r[3])):
		for x in range(int(r[0]), int(r[0]) + int(r[2])):
			var k := "%d,%d" % [x, y]
			if int(lv["tiles"][y][x]) != T.FLOOR or lv["features"].has(k) or lv["items"].has(k) or taken.has(k):
				continue
			if x == int(st[0]) and y == int(st[1]):
				continue
			cands.append(Vector2i(x, y))
	if cands.is_empty():
		return Vector2i(-1, -1)
	return cands[rng.randi_range(0, cands.size() - 1)]

static func _has_tile(lv: Dictionary, t: int) -> bool:
	for row in lv["tiles"]:
		if (row as Array).has(t):
			return true
	return false

static func _generate_once(depth: int, rng: RandomNumberGenerator, crystal_index: int, max_depth: int, force: bool) -> Dictionary:
	var tiles := _blank(T.WALL)
	var room_of := _blank(-1)
	var rects: Array = []        # Rect2i per room id
	var kinds: Array = []        # "room", "hall" or "alcove" per room id
	var edges := {}              # edge_key -> E.DOOR / E.LOCKED / E.STORE (absent between rooms = E.WALL)
	var cover := 0
	var tries := 0
	var door_cells: Array = []    # cells on either side of every door
	while tries < 900 and cover < int(W * H * 0.62):
		tries += 1
		var hall: bool = rects.size() > 0 and rng.randf() < 0.5
		# small rooms and hallways are common; big rooms (5 x 5 and up) are possible but rare
		var widths := [2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 5]
		var heights := [2, 2, 2, 2, 3, 3, 3, 3, 4]
		var sz := Vector2i(int(widths[rng.randi_range(0, widths.size() - 1)]), int(heights[rng.randi_range(0, heights.size() - 1)]))
		if hall:
			sz = Vector2i(rng.randi_range(3, 8), 1) if rng.randf() < 0.55 else Vector2i(1, rng.randi_range(3, 6))
		var r := Rect2i(Vector2i(rng.randi_range(0, W - sz.x), rng.randi_range(0, H - sz.y)), sz)
		var clash := false
		for o in rects:
			var orr: Rect2i = o
			if orr.intersects(r):
				clash = true
				break
		if clash:
			continue
		# every new rectangle must share a wall with an existing one (so a door can join them)
		var touch := _shared_edges(r, room_of)
		if rects.size() > 0 and touch.is_empty():
			continue
		# its connecting door must keep at least a cell from every other door (no doors side by side
		# or meeting at a corner) - if no such spot exists, try another rectangle
		if rects.size() > 0 and touch.filter(func(pp): return _door_spacing_ok(pp, door_cells)).is_empty():
			continue
		var id := rects.size()
		rects.append(r)
		kinds.append("hall" if hall else "room")
		for y in range(r.position.y, r.end.y):
			for x in range(r.position.x, r.end.x):
				tiles[y][x] = T.FLOOR
				room_of[y][x] = id
		cover += r.size.x * r.size.y
		if touch.is_empty():
			continue
		# one door to a neighbour it touches (keeps the floor connected) and sometimes a second
		var by_room := {}
		for pr in touch:
			var other: int = pr[2]
			if not by_room.has(other):
				by_room[other] = []
			by_room[other].append(pr)
		var others: Array = by_room.keys()
		others.shuffle()
		var placed_one := false
		for n in others.size():
			var pairs: Array = by_room[others[n]]
			# doors keep at least one cell apart, and never meet at a corner
			var ok_pairs: Array = pairs.filter(func(pp): return _door_spacing_ok(pp, door_cells))
			if ok_pairs.is_empty():
				continue
			if placed_one and rng.randf() > 0.25:
				continue                  # extra doors are occasional; the first one is always made
			var pick: Array = ok_pairs[rng.randi_range(0, ok_pairs.size() - 1)]
			edges[edge_key(pick[0], pick[1])] = E.LOCKED if rng.randf() < 0.5 else E.DOOR      # f4_0a1a locks about half the doors
			door_cells.append(pick[0])
			door_cells.append(pick[1])
			placed_one = true

	var rooms: Array = []          # ids of proper rooms (not hallways) for features and monsters
	for i in rects.size():
		if kinds[i] == "room":
			rooms.append(i)
	if rooms.is_empty():
		rooms.append(0)

	var used := {}
	var alcoves := {}
	var features: Dictionary = {}
	var add_alcove := func(want_room: int, open_edge: int) -> Vector2i:
		var order: Array = [want_room]
		for rid in rooms:
			if rid != want_room:
				order.append(rid)
		for k in rects.size():
			if not order.has(k) and kinds[k] != "alcove":
				order.append(k)
		var passes: int = 2 if force else 1
		for pass_n in passes:
			for rid in order:
				var c: Vector2i = _alcove_cell(rects[rid], rng, tiles, room_of) if pass_n == 0 else _any_edge_cell(rects[rid], tiles)
				if c.x < 0:
					continue
				var id := rects.size()
				rects.append(Rect2i(c, Vector2i(1, 1)))
				kinds.append("alcove")
				tiles[c.y][c.x] = T.FLOOR
				room_of[c.y][c.x] = id
				var inside := _neighbour_in(c, rid, room_of)
				edges[edge_key(c, inside)] = open_edge
				alcoves["%d,%d" % [c.x, c.y]] = [inside.x, inside.y]
				used["%d,%d" % [c.x, c.y]] = true
				return c
		return Vector2i(-1, -1)

	var first: int = rooms[0]
	var last: int = rooms[rooms.size() - 1]
	var start := _free_cell(rects[first], rng, used, tiles)
	var start_dir_up := -1
	# stairs: an alcove behind a STAIRS edge (flush with the wall in the 3D view); you arrive
	# on the room cell in front of it
	if depth > 1:
		var up: Vector2i = add_alcove.call(first, E.STAIRS)
		if up.x >= 0:
			tiles[up.y][up.x] = T.STAIRS_UP
			var a: Array = alcoves["%d,%d" % [up.x, up.y]]
			start = Vector2i(int(a[0]), int(a[1]))
			start_dir_up = _away_dir(start, up)
	var down := Vector2i(-1, -1)
	var down_dir := -1
	# the way on: stairs up to the next floor - or, on the top floor, the stairs up into the Tower of Jewels
	var dn: Vector2i = add_alcove.call(last, E.STAIRS if depth < max_depth else E.TOWER)
	if dn.x >= 0:
		tiles[dn.y][dn.x] = T.STAIRS_DOWN
		var a2: Array = alcoves["%d,%d" % [dn.x, dn.y]]
		down = Vector2i(int(a2[0]), int(a2[1]))
		down_dir = _away_dir(down, dn)
		if depth >= max_depth:
			features["%d,%d" % [dn.x, dn.y]] = F.TOWER

	var boxes: Dictionary = {}        # magic box picture per cell: 1250 Muldiv's, 1260 Divsub's
	var items: Dictionary = {}
	var monsters: Array = []
	var put_feature := func(f: int) -> void:
		var rid: int = rooms[rng.randi_range(0, rooms.size() - 1)]
		var c := _free_cell(rects[rid], rng, used, tiles)
		features["%d,%d" % [c.x, c.y]] = f

	var start_dir := start_dir_up
	if depth == 1:
		# the game begins one space from Subadd's store, facing it (as in the original)
		var s1: Vector2i = add_alcove.call(first, E.STORE)
		if s1.x >= 0:
			features["%d,%d" % [s1.x, s1.y]] = F.STORE
			var ins: Array = alcoves["%d,%d" % [s1.x, s1.y]]
			start = Vector2i(int(ins[0]), int(ins[1]))
			var dv: Vector2i = s1 - start
			# you stand in front of the store with your back to its door
			# GameState.DIRS numbers directions 1=N 2=E 3=S 4=W
			var into: int = [Vector2i(0, -1), Vector2i(1, 0), Vector2i(0, 1), Vector2i(-1, 0)].find(dv)
			start_dir = (into + 2) % 4 + 1 if into >= 0 else 1
	elif depth in STORE_FLOORS:       # Subadd's branch stores: fixed floors (the original's data block)
		var sc: Vector2i = add_alcove.call(rooms[rng.randi_range(0, rooms.size() - 1)], E.STORE)
		if sc.x >= 0:
			features["%d,%d" % [sc.x, sc.y]] = F.STORE
	if crystal_index >= 0:
		put_feature.call(F.CRYSTAL)

	return {
		"depth": depth, "tiles": tiles, "room_of": room_of, "edges": edges, "kinds": kinds,
		"rooms": rects.map(func(rr): return [rr.position.x, rr.position.y, rr.size.x, rr.size.y]),
		"start": [start.x, start.y], "down": [down.x, down.y],
		"features": features, "items": items, "monsters": monsters,
		"seen": _blank(false), "crystal": crystal_index, "alcoves": alcoves, "start_dir": start_dir, "down_dir": down_dir, "boxes": boxes,
	}

## A new door's two cells must not be (or touch) a cell of an existing door: no doors side by side
## on a wall, and no two doors meeting at a room corner.
static func _door_spacing_ok(pair: Array, door_cells: Array) -> bool:
	var a: Vector2i = pair[0]
	var b: Vector2i = pair[1]
	for dc in door_cells:
		var d: Vector2i = dc
		if absi(d.x - a.x) + absi(d.y - a.y) <= 1 or absi(d.x - b.x) + absi(d.y - b.y) <= 1:
			return false
	return true

## Pairs of cells [inside r, outside r, other room id] across r's boundary, where the outside
## cell belongs to an existing room: those edges are shared walls where a door can go.
static func _shared_edges(r: Rect2i, room_of: Array) -> Array:
	var out: Array = []
	for y in range(r.position.y, r.end.y):
		for x in range(r.position.x, r.end.x):
			var c := Vector2i(x, y)
			for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
				var n: Vector2i = c + d
				if r.has_point(n) or n.x < 0 or n.y < 0 or n.x >= W or n.y >= H:
					continue
				if int(room_of[n.y][n.x]) >= 0:
					out.append([c, n, int(room_of[n.y][n.x])])
	return out

## Last resort for stairs: any rock cell beside the room's edge (not a corner).
static func _any_edge_cell(r: Rect2i, tiles: Array) -> Vector2i:
	for x in range(r.position.x, r.end.x):
		for c in [Vector2i(x, r.position.y - 1), Vector2i(x, r.end.y)]:
			var cv: Vector2i = c
			if cv.x >= 0 and cv.y >= 0 and cv.x < W and cv.y < H and tiles[cv.y][cv.x] == T.WALL:
				return cv
	for y in range(r.position.y, r.end.y):
		for c in [Vector2i(r.position.x - 1, y), Vector2i(r.end.x, y)]:
			var cv: Vector2i = c
			if cv.x >= 0 and cv.y >= 0 and cv.x < W and cv.y < H and tiles[cv.y][cv.x] == T.WALL:
				return cv
	return Vector2i(-1, -1)

## A rock cell beside the room's edge (not a corner) whose other sides are rock or the border.
static func _alcove_cell(r: Rect2i, rng: RandomNumberGenerator, tiles: Array, room_of: Array) -> Vector2i:
	var cands: Array = []
	for x in range(r.position.x, r.end.x):
		cands.append([Vector2i(x, r.position.y - 1), Vector2i(0, 1)])
		cands.append([Vector2i(x, r.end.y), Vector2i(0, -1)])
	for y in range(r.position.y, r.end.y):
		cands.append([Vector2i(r.position.x - 1, y), Vector2i(1, 0)])
		cands.append([Vector2i(r.end.x, y), Vector2i(-1, 0)])
	cands.shuffle()
	for cd in cands:
		var c: Vector2i = cd[0]
		var into: Vector2i = cd[1]
		if c.x < 0 or c.y < 0 or c.x >= W or c.y >= H or tiles[c.y][c.x] != T.WALL:
			continue
		var ok := true
		for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
			if d == into:
				continue
			var n: Vector2i = c + d
			if n.x >= 0 and n.y >= 0 and n.x < W and n.y < H and tiles[n.y][n.x] != T.WALL:
				ok = false
		if ok:
			return c
	return Vector2i(-1, -1)

static func _neighbour_in(c: Vector2i, rid: int, room_of: Array) -> Vector2i:
	for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
		var n: Vector2i = c + d
		if n.x >= 0 and n.y >= 0 and n.x < W and n.y < H and int(room_of[n.y][n.x]) == rid:
			return n
	return c

## Monsters, as in f4_3e76.  Type: floors 1-10 use their own block of ten - random(1..10) +
## 10 x (floor - 1) - and deeper floors any of the 100.  (Type T is STR# entry T + 1.)
## Hit points: one roll of the type's hit die per floor number, and below floor 10 a 20 % chance of
## floor / 2 more.  Armor value: random(1 .. the type's armor), less random(0..5) below floor 10.
const STORE_FLOORS := [3, 6, 9, 12, 15, 18]

static func make_monster(depth: int, rng: RandomNumberGenerator, c: Vector2i) -> Dictionary:
	var mons: Array = Data.monsters()
	var t: int = rng.randi_range(1, 10) + 10 * (depth - 1) if depth <= 10 else rng.randi_range(1, 100)
	var idx := 0
	for i in mons.size():
		if int(mons[i]["id"]) == t + 1:
			idx = i
			break
	var m: Dictionary = mons[idx]
	var hd: int = maxi(1, int(m["hit_dice"]))
	var hp := 0
	for i in depth:
		hp += rng.randi_range(1, hd)
	if depth > 10 and rng.randi_range(1, 100) > 80:
		for i in depth / 2:
			hp += rng.randi_range(1, hd)
	var arm := rng.randi_range(1, maxi(1, int(m["armor_class"])))
	if depth > 10:
		arm -= rng.randi_range(0, 5)
	return {"idx": idx, "x": c.x, "y": c.y, "hp": maxi(1, hp), "maxhp": maxi(1, hp), "awake": false, "stuck": 0, "peace": arm}

## Floor treasure gated by the castle level, so rare items are rare early (APPROX).
static func random_item(depth: int, rng: RandomNumberGenerator) -> Dictionary:
	var tier := clampi((depth - 1) / 4, 0, 4)          # 1-4, 5-8, 9-12, 13-16, 17-20
	var roll := rng.randi_range(0, 99)
	if roll < 28:
		return {"kind": "gold", "amount": rng.randi_range(5, 20) * depth}
	if roll < 40:
		return {"kind": "food"}
	if roll < 62:
		var common := [4, 5, 0, 2, 9, 1, 3, 10, 6]
		var pool: Array = common if tier < 2 else range(Data.list("potions").size())
		return {"kind": "potion", "type": int(pool[rng.randi_range(0, pool.size() - 1)])}
	if roll < 78:
		var pool2: Array = range(mini(11, Data.list("scrolls").size())) if tier < 2 else range(Data.list("scrolls").size())
		return {"kind": "scroll", "type": int(pool2[rng.randi_range(0, pool2.size() - 1)])}
	if roll < 90:
		# wands are common from the start (weak heat / cold wands first, stronger ones deeper)
		# heat / cold first; then fire, frost, aggression, peace; deeper, all fifteen wands
		var wpool: Array = [0, 4] if tier == 0 else ([0, 1, 4, 5, 8, 9] if tier == 1 else range(Data.list("wands").size()))
		return {"kind": "wand", "type": int(wpool[rng.randi_range(0, wpool.size() - 1)]), "charges": 1}
	if roll < 96:
		var k: String = ["armor", "sword", "shield"][rng.randi_range(0, 2)]
		var t := rng.randi_range(maxi(0, 4 - tier - 1), 4)
		return {"kind": k, "type": t, "bonus": 0}          # found equipment is never enhanced or cursed
	if tier >= 2:
		var kk: String = ["ring", "helm", "amulet"][rng.randi_range(0, 2)]
		return {"kind": kk, "type": rng.randi_range(0, Data.list(kk + "s").size() - 1)}
	return {"kind": "gold", "amount": rng.randi_range(5, 20) * depth}

static func _blank(v) -> Array:
	var a: Array = []
	for y in H:
		var row: Array = []
		for x in W:
			row.append(v)
		a.append(row)
	return a

static func _center(r: Rect2i) -> Vector2i:
	return r.position + r.size / 2

## Kept for the overhead view's feature drawing.
static func _touches_room(room_of: Array, c: Vector2i) -> bool:
	for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
		var n: Vector2i = c + d
		if n.x >= 0 and n.y >= 0 and n.x < W and n.y < H and room_of[n.y][n.x] >= 0:
			return true
	return false

static func _free_cell(r: Rect2i, rng: RandomNumberGenerator, used: Dictionary, tiles: Array) -> Vector2i:
	for i in 60:
		var c := Vector2i(rng.randi_range(r.position.x, r.end.x - 1), rng.randi_range(r.position.y, r.end.y - 1))
		var k := "%d,%d" % [c.x, c.y]
		if not used.has(k) and tiles[c.y][c.x] == T.FLOOR:
			used[k] = true
			return c
	return r.position
