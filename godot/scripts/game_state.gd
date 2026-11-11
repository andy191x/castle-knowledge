class_name GameState
extends RefCounted
## Core rules of Castle Knowledge.
## Data (monsters, items, messages, titles) comes straight from the original resources.
## Formulas marked APPROX are reconstructions consistent with that data
## (monster stats are D&D-style: hit dice + armor class, lower AC = harder to hit);
## they have not yet been verified instruction-by-instruction against the 68k code.

signal message(text: String)
signal stats_changed
signal leveled(new_level: int)
signal popup(text: String)
signal note(text: String)
signal player_hit(m: Dictionary)
signal monster_hit(m: Dictionary)  # a monster's blow landed (the dither over the 3D view)   # one of your blows landed (the hit effect, f3_0b2a)          # shown for a few seconds (a monster's special attack)
signal monster_attacked(m: Dictionary)   # f3_2df2 zooms the attacker in        # shown as a dialog (e.g. hunger, DLOG 500)
signal killed(x: int, y: int, gold: int, name: String)

## Unidentified items go by an alias, as in the original (the alias tables are loaded in f2_14d4
## and read by f3_3602 / f3_3692 / f3_36fa / f3_3762 / f3_3af2 / f3_3b5a): potions by colour
## (STR# 201), scrolls by material (801), wands and helms by metal (301), rings by jewel (401),
## amulets by shape (901).  The save file keeps the shuffled colour/metal/jewel/material tables but
## not the shapes, so amulet shapes keep a fixed order.
const ALIAS_TABLES := {"potion": "colors", "scroll": "fabrics", "wand": "metals", "ring": "jewels", "helm": "metals", "amulet": "shapes"}
const ALIAS_NOUN := {"potion": "potion", "scroll": "scroll", "wand": "wand", "ring": "ring", "helm": "helm", "amulet": "amulet"}

## Item numbers within each kind (STR# 701: wands 41-55, rings 56-60, helms 61-64, amulets 65-70)
enum { WAND_HEAT, WAND_FIRE, WAND_INFERNO, WAND_DEMON_SLAYER, WAND_COLD, WAND_FROST, WAND_ICE,
	WAND_GIANT_SLAYER, WAND_AGGRESSION, WAND_PEACE, WAND_YOUTH, WAND_AGING, WAND_DEVIL_SLAYER,
	WAND_MONSTER_HEALING, WAND_DRAGON_SLAYER }
enum { RING_POWER, RING_SPEED, RING_KNOWLEDGE, RING_CONFUSION, RING_HEALING }
enum { HELM_SLOWNESS, HELM_PROTECTION, HELM_WARRIOR, HELM_STUPIDITY }

const MAX_RATIONS := 5
const MAX_LEVEL := 20      # KNIGHT ULTIMATE
const MAX_WANDS := 5      # the wand window shows up to five   # "Sorry, you can't carry another ration." (DITL 1248)

const MAX_DEPTH := 20
const SAVE_PATH := "user://castle_knowledge_save.json"
const DIRS := [Vector2i(0, 0), Vector2i(0, -1), Vector2i(1, 0), Vector2i(0, 1), Vector2i(-1, 0)]  # 1=N 2=E 3=S 4=W (STR# 220)

var rng := RandomNumberGenerator.new()
var p: Dictionary = {}          # player
var levels: Dictionary = {}     # depth(str) -> level dict
var depth := 1
var crystal_levels: Array = []  # depth for crystal 0..3
var won := false
var combat_enabled := true    # Debug > Enable Combat
var prefs_ui: Dictionary = {}       # remembered window places and option toggles (user://prefs.json)
var options := {"counting": true, "math_add": true, "math_sub": true, "math_mul": true, "math_div": true,
	"deduction": true, "coins": true, "teaser": true, "words4": true, "words5": true, "words6": true,
	"max_sum": 20, "max_mult": 10, "max_count": 20, "synonyms": true, "capitals": true, "words": true}

## After the jewel is formed: "I am safely transporting you back to the first level.  Good luck in your
## next adventure."  You keep yourself and your belongings; the castle and its four crystals are new.
## The fountain of life appears once per game, on a random floor from 14 to 19.
func _pick_fountain_floor() -> void:
	p["fountain_floor"] = rng.randi_range(14, mini(19, MAX_DEPTH))

func _place_fountain(lv: Dictionary) -> void:
	var cands: Array = []
	var kinds: Array = lv.get("kinds", [])
	for y in LevelGen.H:
		for x in LevelGen.W:
			var rid := int(lv["room_of"][y][x])
			if rid < 0 or int(lv["tiles"][y][x]) != LevelGen.T.FLOOR:
				continue
			if rid < kinds.size() and str(kinds[rid]) != "room":
				continue
			var k := "%d,%d" % [x, y]
			if lv["features"].has(k) or lv["items"].has(k):
				continue
			var busy_cell := false
			for m in lv["monsters"]:
				if int(m["x"]) == x and int(m["y"]) == y:
					busy_cell = true
			if not busy_cell:
				cands.append(k)
	if cands.size() > 0:
		lv["features"][cands[rng.randi_range(0, cands.size() - 1)]] = LevelGen.F.FOUNTAIN

## The crystals go back into the castle: floors already visited get theirs again (floors not yet visited
## will place it when generated, since you no longer hold it).
func rehide_crystals() -> void:
	for ci in 4:
		var key := str(int(crystal_levels[ci]))
		if not levels.has(key):
			continue
		var lv: Dictionary = levels[key]
		lv["crystal"] = ci
		var cands: Array = []
		for y in LevelGen.H:
			for x in LevelGen.W:
				var k := "%d,%d" % [x, y]
				if int(lv["room_of"][y][x]) >= 0 and int(lv["tiles"][y][x]) == LevelGen.T.FLOOR and not lv["features"].has(k):
					cands.append(k)
		if cands.size() > 0:
			lv["features"][cands[rng.randi_range(0, cands.size() - 1)]] = LevelGen.F.CRYSTAL

## Each floor's seed is picked once per game (and per new adventure) and saved, so floors not yet visited
## come out the same however often the game is saved and resumed.
func _pick_floor_seeds() -> void:
	var seeds: Array = []
	for i in MAX_DEPTH + 1:
		seeds.append(rng.randi())
	p["floor_seeds"] = seeds

func floor_seed(d: int) -> int:
	if not p.has("floor_seeds") or (p["floor_seeds"] as Array).size() <= d:
		_pick_floor_seeds()
	return int(p["floor_seeds"][d])

## f4_4040: the first crystal is on floor 4 or 5, each next one 4 or 5 floors further (4-5, 8-10,
## 12-15, 16-20).
func _pick_crystal_floors() -> void:
	crystal_levels = []
	var fl := 0
	for i in 4:
		fl += rng.randi_range(4, 5)
		crystal_levels.append(mini(fl, MAX_DEPTH))

func new_adventure() -> void:
	p["placed"] = {}                  # a new castle: the once-per-game places can appear again
	won = false
	_pick_floor_seeds()
	_pick_fountain_floor()
	crystal_levels = []
	_pick_crystal_floors()
	p["crystals"] = []
	levels = {}
	enter_level(1, false)
	emit_signal("stats_changed")

func new_game(name: String) -> void:
	rng.randomize()
	p = {
		"name": name, "x": 0, "y": 0, "dir": 3,
		"hp": 20, "maxhp": 20, "str": rng.randi_range(12, 17), "dex": rng.randi_range(12, 17),
		"iq": rng.randi_range(12, 17), "lk": rng.randi_range(12, 17),
		"level": 1, "xp": 0, "xp_next": 50, "gold": 0, "spell_counts": [0, 0, 0, 0, 0, 0], "hunger": 0, "spells": 0,
		"armor": {"type": -1, "bonus": 0}, "sword": {"type": 5, "bonus": 0}, "shield": {"type": -1, "bonus": 0},
		"ring": null, "helm": null, "amulet": null,
		"pack": [], "crystals": [], "keys": 0, "rations": 2,
		"floor_fx": {},   # potion effects that last for the current floor
		"luck": 0, "moves": 0,
	}
	_init_aliases()
	# crystals: floors 4-5, then 4-5 floors further each time (f4_4040)
	p["placed"] = {}
	_pick_floor_seeds()
	crystal_levels = []
	_pick_crystal_floors()
	levels = {}
	depth = 1
	won = false
	enter_level(1, false)

# ------------------------------------------------------------ levels
func level() -> Dictionary:
	return levels[str(depth)]

func enter_level(d: int, from_below: bool) -> void:
	depth = d
	if not levels.has(str(d)):
		var ci := crystal_levels.find(d)
		if ci >= 0 and p["crystals"].has(ci):
			ci = -1
		var lrng := RandomNumberGenerator.new()
		lrng.seed = floor_seed(d)                  # the same floor every time, even after loading a save
		levels[str(d)] = LevelGen.generate(d, lrng, ci, MAX_DEPTH)
		if not p.has("placed"):
			p["placed"] = {}
		LevelGen.populate(levels[str(d)], d, lrng, p["placed"])
	var L := level()
	var pos: Array = L["down"] if from_below else L["start"]
	p["x"] = int(pos[0])
	p["y"] = int(pos[1])
	# face away from the stairs you came by (floor 1: your back to Subadd's store)
	var fd: int = int(L.get("down_dir", -1)) if from_below else int(L.get("start_dir", -1))
	if fd >= 1 and fd <= 4:
		p["dir"] = fd
	p["floor_fx"] = {}
	reveal()
	emit_signal("message", "You are now on level %d." % d)
	emit_signal("stats_changed")

func tile(x: int, y: int) -> int:
	if x < 0 or y < 0 or x >= LevelGen.W or y >= LevelGen.H:
		return LevelGen.T.WALL
	return int(level()["tiles"][y][x])

func feature_at(x: int, y: int) -> int:
	return int(level()["features"].get("%d,%d" % [x, y], LevelGen.F.NONE))

func monster_at(x: int, y: int) -> Dictionary:
	for m in level()["monsters"]:
		if int(m["x"]) == x and int(m["y"]) == y:
			return m
	return {}

func reveal() -> void:
	var L := level()
	var px: int = p["x"]
	var py: int = p["y"]
	var here := Vector2i(px, py)
	var seen: Array = L["seen"]
	var todo: Array = [here]
	var done := {}
	while todo.size() > 0:
		var c: Vector2i = todo.pop_back()
		var k := "%d,%d" % [c.x, c.y]
		if done.has(k):
			continue
		done[k] = true
		seen[c.y][c.x] = true
		for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
			var n: Vector2i = c + d
			if n.x < 0 or n.y < 0 or n.x >= LevelGen.W or n.y >= LevelGen.H:
				continue
			var e := edge(c, n)
			if e == LevelGen.E.OPEN and tile(n.x, n.y) != LevelGen.T.WALL:
				todo.append(n)
			elif e == LevelGen.E.STORE or e == LevelGen.E.STAIRS or e == LevelGen.E.TOWER:
				seen[n.y][n.x] = true      # the store's / stairs' recess shows on the overhead map

func _room_contains(L: Dictionary, room: int, x: int, y: int) -> bool:
	var r: Array = L["rooms"][room]
	return x >= int(r[0]) - 1 and y >= int(r[1]) - 1 and x <= int(r[0]) + int(r[2]) and y <= int(r[1]) + int(r[3])

func map_level() -> void:
	var L := level()
	for y in LevelGen.H:
		for x in LevelGen.W:
			if L["tiles"][y][x] != LevelGen.T.WALL or LevelGen._touches_room(L["room_of"], Vector2i(x, y)):
				L["seen"][y][x] = true

# ------------------------------------------------------------ derived stats
## Level titles: the original looks up STR# 2005 entry "level" (counting from 1), whose first entry is a
## placeholder - so level 2 is JUNIOR FIGHTER and level 20 KNIGHT ULTIMATE.  Level 1 has no real
## name in the original; it is called STUDENT FIGHTER here.
func title_for(lv: int) -> String:
	if lv <= 1:
		return "STUDENT FIGHTER"
	var t: Array = Data.list("level_titles")
	return str(t[clampi(lv - 1, 1, t.size() - 1)]) if t.size() > 1 else ""

func title() -> String:
	return title_for(int(p["level"]))

func fx(name: String) -> bool:
	return p["floor_fx"].has(name)

## Armor class, as in the original: the armor's base value (the data block's table at A5-$c51e:
## none 10, robe 9, leather 8, ring 6, chain 4, plate 2) minus its bonus, minus the shield's type
## (1-5) and bonus (f4_59fc / f3_3bc2).  Lower is better.
const ARMOR_BASE := [9, 8, 6, 4, 2]

func armor_class() -> int:
	var ac := 10
	var a: Dictionary = p["armor"]
	if int(a["type"]) >= 0:
		ac = int(ARMOR_BASE[clampi(int(a["type"]), 0, 4)]) - int(a["bonus"])
	var s: Dictionary = p["shield"]
	if int(s["type"]) >= 0 and int(s["type"]) <= 4:
		ac -= int(s["type"]) + 1 + int(s["bonus"])
	return ac

func sword_die() -> int:
	# two hand sword, scimitar, long sword, rapier, short sword, bare hands, broken sword (STR# 601)
	return [12, 8, 8, 6, 6, 2, 3][clampi(int(p["sword"]["type"]), 0, 6)]

func str_bonus() -> int:
	return (int(p["str"]) - 12) / 3

func dex_bonus() -> int:
	return (int(p["dex"]) - 12) / 3

## The XP needed for the next level (g_7c7c): 50 at the start (f3_3834), then set by each level-up.
func xp_for_next() -> int:
	if not p.has("xp_next"):
		p["xp_next"] = maxi(50, 2 * int(p.get("xp", 0)))
	return int(p["xp_next"])

# ------------------------------------------------------------ player turn
## Returns a result dict the UI acts on: {"type": ...}
func try_move(dir: int) -> Dictionary:
	if _ring(RING_CONFUSION) and rng.randi_range(1, 100) > 50:
		dir = rng.randi_range(0, 3)
	p["dir"] = dir
	var nx: int = int(p["x"]) + DIRS[dir].x
	var ny: int = int(p["y"]) + DIRS[dir].y
	var m := monster_at(nx, ny)
	if not m.is_empty() and combat_enabled and open_between(Vector2i(int(p["x"]), int(p["y"])), Vector2i(nx, ny)):
		attack(m)
		return {"type": "turn"}
	var t := tile(nx, ny)
	if t == LevelGen.T.WALL:
		return {"type": "blocked"}
	match edge(Vector2i(int(p["x"]), int(p["y"])), Vector2i(nx, ny)):
		LevelGen.E.WALL:
			return {"type": "blocked"}
		LevelGen.E.STORE:
			# the store door is in the wall: walking into it opens the store; you do not move
			return {"type": "feature", "feature": LevelGen.F.STORE, "key": "%d,%d" % [nx, ny]}
		LevelGen.E.TOWER:
			# the Tower of Jewels: stairs up from the top floor; walking into them opens the tower
			return {"type": "feature", "feature": LevelGen.F.TOWER, "key": "%d,%d" % [nx, ny]}
		LevelGen.E.STAIRS:
			# the stairs are flush with the wall too: you are asked before leaving the level
			return {"type": "stairs_down" if t == LevelGen.T.STAIRS_DOWN else "stairs_up"}
		LevelGen.E.LOCKED:
			return {"type": "locked", "x": nx, "y": ny}
		LevelGen.E.DOOR:
			return {"type": "door", "x": nx, "y": ny}
	p["x"] = nx
	p["y"] = ny
	hunger_step()
	reveal()
	var res := {"type": "turn"}
	var key := "%d,%d" % [nx, ny]
	if level()["items"].has(key):
		res["item_key"] = key
	var f := feature_at(nx, ny)
	if f != LevelGen.F.NONE:
		res = {"type": "feature", "feature": f, "key": key}
	elif t == LevelGen.T.STAIRS_DOWN:
		res = {"type": "stairs_down"}
	elif t == LevelGen.T.STAIRS_UP:
		res = {"type": "stairs_up"}
	return res

## Doors are part of the wall between a doorway cell and the room cell beside it, as in the
## original: crossing one moves you a single cell, and the door is right behind you.
func room_at(c: Vector2i) -> int:
	if c.x < 0 or c.y < 0 or c.x >= LevelGen.W or c.y >= LevelGen.H:
		return -1
	return int(level()["room_of"][c.y][c.x])

## What lies on the edge between two neighbouring cells (LevelGen.E): walls are lines between
## cells, doors are cut into them, and cells of the same rectangle are open to each other.
func edge(a: Vector2i, b: Vector2i) -> int:
	if absi(a.x - b.x) + absi(a.y - b.y) != 1:
		return LevelGen.E.WALL
	if tile(a.x, a.y) == LevelGen.T.WALL or tile(b.x, b.y) == LevelGen.T.WALL:
		return LevelGen.E.WALL
	if room_at(a) == room_at(b):
		return LevelGen.E.OPEN
	return int(level().get("edges", {}).get(LevelGen.edge_key(a, b), LevelGen.E.WALL))

func door_between(a: Vector2i, b: Vector2i) -> bool:
	return edge(a, b) == LevelGen.E.DOOR

## Can you step / see straight from a to b?
func open_between(a: Vector2i, b: Vector2i) -> bool:
	return tile(b.x, b.y) != LevelGen.T.WALL and edge(a, b) == LevelGen.E.OPEN

func pass_door(x: int, y: int) -> bool:
	var target := Vector2i(x, y)
	var m := monster_at(x, y)
	if not m.is_empty():
		# make room: the creature steps back into its room, then the fight starts normally
		var moved := false
		for d in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
			var n: Vector2i = target + d
			if n == Vector2i(int(p["x"]), int(p["y"])):
				continue
			if open_between(target, n) and monster_at(n.x, n.y).is_empty() and feature_at(n.x, n.y) == LevelGen.F.NONE:
				m["x"] = n.x
				m["y"] = n.y
				moved = true
				break
		if not moved:
			return false
	p["x"] = x
	p["y"] = y
	hunger_step()
	reveal()
	emit_signal("stats_changed")
	return true

## The monster you are fighting (only one fights at a time), or {}.
## DEATH: every monster on the floor is gone at once - no tombstones, no fights - and their experience
## (maximum hit points x floor each, as for a kill) is yours.
func vanquish_all() -> void:
	var xp := 0
	for m in level()["monsters"]:
		xp += maxi(1, int(m.get("maxhp", 1))) * depth
	level()["monsters"] = []
	if xp > 0:
		add_xp(xp)
	emit_signal("stats_changed")

func end_fight() -> void:
	for m in level()["monsters"]:
		m["engaged"] = false

## The monster sharing your space (the one you are fighting), if any.
func monster_here() -> Dictionary:
	return monster_at(int(p["x"]), int(p["y"]))

func engaged_monster() -> Dictionary:
	for m in level()["monsters"]:
		if bool(m.get("engaged", false)):
			return m
	return {}

## Drop what you wear in a slot: it goes on the floor (as a dropped item does) and the slot becomes "none".
func drop_equipped(slot: String) -> void:
	var cur = p.get(slot)
	if cur == null:
		return
	var it: Dictionary = (cur as Dictionary).duplicate()
	it["kind"] = slot
	match slot:
		"sword":
			if int(cur["type"]) >= 5:
				return
			p["sword"] = {"type": 5, "bonus": 0}
		"armor", "shield":
			if int(cur["type"]) < 0:
				return
			p[slot] = {"type": -1, "bonus": 0}
		_:
			p[slot] = null
	p["pack"].append(it)
	drop_item(p["pack"].size() - 1)        # straight from the end of the pack, before any sorting
	emit_signal("stats_changed")

## Take off what is worn in a slot (armor / sword / shield / ring / helm / amulet).
func unequip(slot: String) -> void:
	var cur = p.get(slot)
	if cur == null:
		return
	match slot:
		"sword":
			if int(cur["type"]) < 5:
				p["pack"].append({"kind": "sword", "type": int(cur["type"]), "bonus": int(cur["bonus"])})
			p["sword"] = {"type": 5, "bonus": 0}
		"armor", "shield":
			if int(cur["type"]) >= 0:
				p["pack"].append({"kind": slot, "type": int(cur["type"]), "bonus": int(cur["bonus"])})
			p[slot] = {"type": -1, "bonus": 0}
		_:
			p["pack"].append(cur)
			p[slot] = null
	var named: Dictionary = cur if (cur as Dictionary).has("kind") else _with_kind(cur, slot)
	emit_signal("message", "You took off the %s." % item_name(named))
	sort_equipment(slot)
	emit_signal("stats_changed")

func _with_kind(it: Dictionary, k: String) -> Dictionary:
	var d := it.duplicate()
	d["kind"] = k
	return d

## Drop pack item i onto the floor: the cell ahead if it is clear floor, else where you stand.
func drop_item(i: int) -> bool:
	var it: Dictionary = p["pack"][i]
	var d: Vector2i = DIRS[int(p["dir"])]
	var here := Vector2i(int(p["x"]), int(p["y"]))
	var cells := [here + d, here]
	for c in cells:
		var cv: Vector2i = c
		var key := "%d,%d" % [cv.x, cv.y]
		if cv != here and (not open_between(here, cv) or tile(cv.x, cv.y) != LevelGen.T.FLOOR):
			continue
		if feature_at(cv.x, cv.y) != LevelGen.F.NONE or not monster_at(cv.x, cv.y).is_empty():
			continue
		put_item(key, it)
		p["pack"].remove_at(i)
		emit_signal("message", "You dropped the %s." % item_name(it))
		emit_signal("stats_changed")
		return true
	emit_signal("message", "There is no room here to drop the %s." % item_name(it))
	return false

func unlock(x: int, y: int) -> void:
	add_xp(2 * int(p["level"]))          # f3_77f8: an unlocked door is worth 2 x your level
	level()["edges"][LevelGen.edge_key(Vector2i(int(p["x"]), int(p["y"])), Vector2i(x, y))] = LevelGen.E.DOOR
	Sfx.play("open_door")

## Items on a cell: the first is stored directly, any more in its "pile" list.
func items_at(key: String) -> Array:
	var it = level()["items"].get(key)
	if it == null:
		return []
	var first: Dictionary = (it as Dictionary).duplicate()
	var pile: Array = first.get("pile", [])
	first.erase("pile")
	var out: Array = [first]
	out.append_array(pile)
	return out

func _set_items_at(key: String, arr: Array) -> void:
	if arr.is_empty():
		level()["items"].erase(key)
		return
	var first: Dictionary = (arr[0] as Dictionary).duplicate()
	if arr.size() > 1:
		first["pile"] = arr.slice(1)
	level()["items"][key] = first

func put_item(key: String, it: Dictionary) -> void:
	var arr := items_at(key)
	arr.append(it)
	_set_items_at(key, arr)

func pick_up(key: String, idx: int = 0, quiet: bool = false) -> void:
	var arr := items_at(key)
	if arr.is_empty():
		return
	idx = clampi(idx, 0, arr.size() - 1)
	var it: Dictionary = arr[idx]
	var why := can_carry(it)
	if why != "":
		if not quiet:
			emit_signal("popup", why)       # it stays where it is (auto pickup just leaves it)
		return
	arr.remove_at(idx)
	_set_items_at(key, arr)
	if it["kind"] == "crystal":
		var ci := int(it["type"])
		if not (p["crystals"] as Array).has(ci):
			p["crystals"].append(ci)
		emit_signal("message", "You found %s!" % Data.s("crystals", ci))
		Sfx.play("crystal_solved")
	elif it["kind"] == "gold":
		p["gold"] = int(p["gold"]) + int(it["amount"])
		emit_signal("message", "You found a pile of gold containing %d gold pieces." % int(it["amount"]))
		Sfx.play("gold")
	else:
		give_item(it)
	emit_signal("stats_changed")

const MAX_PER_KIND := 5
const MAX_POTIONS := 5
const MAX_SCROLLS := 5

## Why an item can't be carried ("" if it can): five rations, wands, potions and scrolls at most, and a
## pack of twenty (DITL 1248: "Sorry, you can't carry another ...").
func can_carry(it: Dictionary) -> String:
	var k := str(it.get("kind", ""))
	if k == "gold" or k == "crystal":
		return ""
	if k == "food":
		return "Sorry, you can't carry another ration." if int(p.get("rations", 0)) >= MAX_RATIONS else ""
	# at most five of each kind of thing (potions, scrolls, wands, rings, helms, amulets, armor, swords, shields)
	var n := 0
	for x in p["pack"]:
		if str(x["kind"]) == k:
			n += 1
	if n >= MAX_PER_KIND:
		return "Sorry, you can't carry another %s." % ("suit of armor" if k == "armor" else k)
	return ""

## Swords, armor and shields in the pack are kept best first (by type, then bonus).
func sort_equipment(kind: String) -> void:
	if not kind in ["sword", "armor", "shield"]:
		return
	var slots: Array = []
	var items: Array = []
	for i in p["pack"].size():
		if str(p["pack"][i]["kind"]) == kind:
			slots.append(i)
			items.append(p["pack"][i])
	items.sort_custom(func(a, b): return _quality(a) > _quality(b))
	for n in slots.size():
		p["pack"][slots[n]] = items[n]

func _quality(it: Dictionary) -> int:
	var t := int(it.get("type", 0))
	var q: int = (4 - t) if str(it["kind"]) == "sword" else t       # two hand sword, plate mail, gold shield best
	return q * 100 + int(it.get("bonus", 0))

## A chest's contents (f2_0d7c): one roll per kind, each only if you carry fewer than its limit (f2_0fb4) -
## potion 60 %, scroll 50 %, wand 40 % (limit 5 each); armor 30 % and sword 30 % (only with no spare one);
## ring 15 % (floor 7+), helm 15 % (9+), amulet 15 % (11+); ration 30 %; gold 40 %
## (100 x floor + 10 x random(100) + random(100), plus 250 x random(5) a quarter of the time and 500 x
## random(3) a tenth of the time).  Armor and swords may carry a bonus (f4_67b4).
func chest_contents() -> Array:
	var out: Array = []
	var carried := func(kind: String) -> int:
		var n := 0
		for x in p["pack"]:
			if str(x["kind"]) == kind:
				n += 1
		return n
	var slots := [["potion", 60, 5, 1], ["scroll", 50, 5, 1], ["wand", 40, 5, 1], ["armor", 30, 1, 1], ["sword", 30, 1, 1],
		["ring", 15, 5, 7], ["helm", 15, 5, 9], ["amulet", 15, 5, 11]]
	for s in slots:
		var kind: String = s[0]
		if depth < int(s[3]) or int(carried.call(kind)) >= int(s[2]):
			continue
		if rng.randi_range(1, 100) >= int(s[1]):
			continue
		var it := {"kind": kind}
		match kind:
			"potion": it["type"] = rng.randi_range(0, Data.list("potions").size() - 1)
			"scroll": it["type"] = rng.randi_range(0, Data.list("scrolls").size() - 1)
			"wand":
				it["type"] = rng.randi_range(0, Data.list("wands").size() - 1)
				it["charges"] = 1
			"ring": it["type"] = rng.randi_range(0, Data.list("rings").size() - 1)
			"helm": it["type"] = rng.randi_range(0, Data.list("helms").size() - 1)
			"amulet": it["type"] = rng.randi_range(0, Data.list("amulets").size() - 1)
			"armor", "sword":
				it["type"] = rng.randi_range(0, 4)
				it["bonus"] = _chest_bonus()
		out.append(it)
	if int(p.get("rations", 0)) < MAX_RATIONS and rng.randi_range(1, 100) < 30:
		out.append({"kind": "food"})
	if rng.randi_range(1, 100) > 60:
		var gold: int = 100 * depth + 10 * rng.randi_range(1, 100) + rng.randi_range(1, 100)
		if rng.randi_range(1, 100) > 75:
			gold += 250 * rng.randi_range(1, 5)
		if rng.randi_range(1, 100) > 90:
			gold += 500 * rng.randi_range(1, 3)
		out.append({"kind": "gold", "amount": gold})
	return out

## f4_67b4: from floor 4, 7 times in 10 a bonus of random(1 .. floor / 4) - cursed (negative) a quarter of those.
func _chest_bonus() -> int:
	if rng.randi_range(1, 10) - 4 < 0 or depth < 4:
		return 0
	var b := rng.randi_range(1, maxi(1, depth / 4))
	if rng.randi_range(1, 4) == 1:
		b = -b
	return b

func give_item(it: Dictionary) -> void:
	var why := can_carry(it)
	if why != "":
		emit_signal("message", why)
		return
	if _ring(RING_KNOWLEDGE):
		identify(str(it["kind"]), int(it.get("type", 0)))
	if it["kind"] == "food":
		p["rations"] = int(p.get("rations", 0)) + 1
		emit_signal("message", "You picked up a ration.")
		Sfx.play("pickup")
		emit_signal("stats_changed")
		return
	p["pack"].append(it)
	sort_equipment(str(it["kind"]))
	emit_signal("message", "You found %s." % with_article(item_name(it)))
	Sfx.play("pickup")

func _init_aliases() -> void:
	var al := {}
	for kind in ALIAS_TABLES.keys():
		var table: Array = Data.list(str(ALIAS_TABLES[kind]))
		var pool: Array = range(table.size())
		if kind != "amulet":
			pool.shuffle()
		al[kind] = pool
	p["aliases"] = al
	var known := {}
	for kind in ALIAS_TABLES.keys():
		known[kind] = []
	p["known"] = known

func is_known(it: Dictionary) -> bool:
	var k := str(it.get("kind", ""))
	if not ALIAS_TABLES.has(k):
		return true
	if not p.has("known"):
		_init_aliases()
	return (p["known"].get(k, []) as Array).has(int(it.get("type", 0)))

func identify(kind: String, t: int) -> void:
	if not ALIAS_TABLES.has(kind):
		return
	if not p.has("known"):
		_init_aliases()
	var lst: Array = p["known"].get(kind, [])
	if not lst.has(t):
		lst.append(t)
	p["known"][kind] = lst

## The alias word for an unidentified item ("mauve", "vellum", "platinum" ...).
func alias_word(it: Dictionary) -> String:
	var k := str(it.get("kind", ""))
	if not ALIAS_TABLES.has(k):
		return ""
	if not p.has("aliases"):
		_init_aliases()
	var table: Array = Data.list(str(ALIAS_TABLES[k]))
	var order: Array = p["aliases"].get(k, [])
	var t := int(it.get("type", 0))
	if table.is_empty():
		return ""
	var idx: int = int(order[t]) if t < order.size() else t
	return str(table[idx % table.size()])

func item_name(it: Dictionary, true_name: bool = false) -> String:
	var k: String = it["kind"]
	if k == "crystal":
		return Data.s("crystals", int(it.get("type", 0)))
	if not true_name and ALIAS_TABLES.has(k) and not is_known(it):
		var nm := "%s %s" % [alias_word(it), str(ALIAS_NOUN[k])]
		return nm
	match k:
		"potion": return "potion of " + Data.s("potions", int(it["type"]))
		"scroll": return "scroll of " + Data.s("scrolls", int(it["type"]))
		"wand": return "wand of %s" % Data.s("wands", int(it["type"]))
		"ring": return "ring of " + Data.s("rings", int(it["type"]))
		"helm": return "helm of " + Data.s("helms", int(it["type"]))
		"amulet": return "amulet of " + Data.s("amulets", int(it["type"]))
		"food": return "plate of food"
		"armor": return _bonus_str(it) + Data.s("armors", int(it["type"]))
		"sword": return _bonus_str(it) + Data.s("swords", int(it["type"]))
		"shield": return _bonus_str(it) + Data.s("shields", int(it["type"]))
	return k

func _bonus_str(it: Dictionary) -> String:
	var b := int(it.get("bonus", 0))
	return ("%+d " % b) if b != 0 else ""

func with_article(s: String) -> String:
	# STR# 699 'a/an'; names that already start with "the" (the crystals) take no article
	if s.to_lower().begins_with("the "):
		return s
	return ("an " if "aeiou".contains(s.substr(0, 1).to_lower()) else "a ") + s

# ------------------------------------------------------------ combat
func _ring(t: int) -> bool:
	return p["ring"] != null and int(p["ring"]["type"]) == t

func _helm(t: int) -> bool:
	return p["helm"] != null and int(p["helm"]["type"]) == t

func _amulet(t: int) -> bool:
	return p["amulet"] != null and int(p["amulet"]["type"]) == t

## The original's sword number t (1..5, 0 = bare hands); the port's best sword (two hand, 0) is 5.
func _orig_sword() -> int:
	var t := int(p["sword"]["type"])
	return 0 if t >= 5 else 5 - t

## Monster special defences, as in f6_1f50 (a 22-way switch on the monster's special defence;
## kind 0 = your sword, 2 = a spell or wand).  Returns the damage that gets through.
const SPELL_RESIST := {3: 80, 5: 40, 6: 50, 8: 60, 14: 60, 16: 25, 17: 50}
const BLOW_DEFLECT := {11: 21, 12: 21, 13: 31, 15: 26, 19: 61, 20: 81}

func special_defense(m: Dictionary, md: Dictionary, dmg: int, kind: int) -> int:
	var sd := int(md["special_defense"])
	var mname := str(md["name"])
	match sd:
		1:
			if kind == 2:
				return dmg / 5 * 4
		2:
			m["hp"] = int(m["hp"]) + 2                     # regains 2 hit points when struck
		7, 9:
			if kind == 0 and int(p["sword"]["bonus"]) <= 0:
				# "... doesn't seem to be affected by your sword blows."
				emit_signal("message", "The %s%s" % [mname, Data.s("monster_defense_messages", 1)])
				return 0                                  # only a magical sword can hurt it
		18:
			if kind == 2:
				m["hp"] = int(m["hp"]) * 2
				m["maxhp"] = int(m["maxhp"]) * 2
				emit_signal("message", "The %s%s" % [mname, Data.s("monster_defense_messages", 3)])
				return 0                                  # "... just seemed to get stronger."
		21:
			# the adherer (f6_1f50 case 21): 50 % of the time it sticks to a sword with no positive
			# bonus and breaks it - you are left bare-handed (the "broken sword" item is never used)
			if kind == 0 and int(p["sword"]["type"]) < 5 and int(p["sword"]["bonus"]) <= 0 and rng.randi_range(1, 100) > 50:
				emit_signal("message", "The" + Data.s("monster_defense_messages", 4))
				p["sword"] = {"type": 5, "bonus": 0}
				emit_signal("stats_changed")
				return 0
	if kind == 2 and SPELL_RESIST.has(sd) and rng.randi_range(1, 100) <= int(SPELL_RESIST[sd]):
		emit_signal("message", "The %s resisted." % mname)
		return 0
	if kind == 0 and BLOW_DEFLECT.has(sd) and rng.randi_range(1, 100) <= int(BLOW_DEFLECT[sd]):
		emit_signal("message", "The " + mname + Data.s("monster_defense_messages", 1))
		return 0
	return dmg

## Your attack round, as in f3_6232: level / 5 + 1 attacks (+half with the ring of speed or the
## helm of warrior, halved by the helm of slowness).  Each: roll random(2t + 18 + the monster's
## peace value) - random(6) bare-handed - and hit if it beats 33 - strength + t - level - to-hit;
## damage random(2t - t/3 - hunger stage) + strength - 15 + sword bonus (+half with the ring of
## power or the helm of warrior).  The round's total is dealt at once.
func attack(m: Dictionary) -> void:
	m.erase("passive")                  # a spawned monster fights once you strike it
	m["met"] = true
	var md: Dictionary = Data.monsters()[int(m["idx"])]
	if fx("slowed") and rng.randf() < 0.3:
		# shrieks and confusion leave you slowed for the rest of the floor: some of your attacks are lost
		emit_signal("message", "You are too slow to strike the %s." % str(md["name"]))
		m["awake"] = true
		return
	var mname: String = md["name"]
	m["awake"] = true
	var attacks: int = int(p["level"]) / 5 + 1
	if _ring(RING_SPEED) or _helm(HELM_WARRIOR):
		attacks += attacks / 2
	if _helm(HELM_SLOWNESS):
		attacks /= 2
	var t := _orig_sword()
	var st := int(p.get("str", 12))
	var total := 0
	var hits := 0
	for a in attacks:
		var die: int = 6 if t == 0 else 2 * t + 18
		var roll := rng.randi_range(1, maxi(1, die + int(m.get("peace", 0))))
		var target: int = 33 - st + t - int(p["level"]) - int(p["floor_fx"].get("to_hit", 0))
		if roll <= target:
			continue
		var dd: int = maxi(1, 2 * t - t / 3 - int(p.get("hunger_stage", 0)))
		var dmg: int = rng.randi_range(1, dd) + st - 15 + int(p["sword"]["bonus"])
		if _ring(RING_POWER) or _helm(HELM_WARRIOR):
			dmg += dmg / 2
		total += dmg
		hits += 1
	if hits == 0 or total <= 0:
		emit_signal("message", "You missed the %s." % mname)
		Sfx.play("miss")
		return
	# f3_6232: the special-defence routine (f6_1f50) runs when random(100) > 100 - floor - level - 5
	if rng.randi_range(1, 100) > 100 - depth - int(p["level"]) - 5:
		total = special_defense(m, md, total, 0)
		if total <= 0:
			return
	if _amulet(4) and DEVILS.has(int(md["id"])):
		total *= 2                          # amulet of devil scourge (port rule)
	m["hp"] = int(m["hp"]) - total
	emit_signal("player_hit", m)
	Sfx.play("hit")
	if int(m["hp"]) <= 0:
		kill(m)
	else:
		emit_signal("message", "You hit the %s." % mname)

func kill(m: Dictionary) -> void:
	var md: Dictionary = Data.monsters()[int(m["idx"])]
	level()["monsters"].erase(m)
	# f3_2a0e: experience = the monster's maximum hit points x the floor number
	var gain: int = maxi(1, int(m.get("maxhp", 1))) * depth
	emit_signal("message", "You killed the %s.  (+%d experience)" % [md["name"], gain])
	# kills are rewarded with a little gold (seen in the playthrough: +5..6 gp on level 1)
	var gp := rng.randi_range(1, 10 * depth) + 1      # f3_2a0e
	p["gold"] = int(p["gold"]) + gp
	emit_signal("killed", int(m["x"]), int(m["y"]), gp, str(md["name"]))
	p["calm"] = 1      # the rest of the room stays still for the turn after a fight
	add_xp(gain)
	if rng.randf() < 0.3:
		pass                         # monsters never leave items behind (as in the original)

## f2_7b7a, run while XP has reached the threshold: below 7,500 the new threshold is twice your
## current XP (so one kill can never give two levels), above it the threshold grows by
## 750 x level + 1,500 x floor; each level-up also gives 100 x the new level in gold (in the dialog).
func add_xp(n: int) -> void:
	p["xp"] = int(p["xp"]) + n
	while int(p["xp"]) >= xp_for_next() and int(p["level"]) < MAX_LEVEL:
		if xp_for_next() < 7500:
			p["xp_next"] = 2 * int(p["xp"])
		else:
			p["xp_next"] = xp_for_next() + 750 * int(p["level"]) + 1500 * depth
		change_level(1)
	emit_signal("stats_changed")

func change_level(delta: int) -> void:
	var before := {"level": int(p["level"]), "maxhp": int(p["maxhp"]), "spells": spell_counts().duplicate()}
	_report_level_change.call_deferred(before)
	p["level"] = clampi(int(p["level"]) + delta, 1, MAX_LEVEL)
	if delta > 0:
		var gain := rng.randi_range(1, 7)          # f3_5f7c: 1-7 more hit points each level
		p["maxhp"] = int(p["maxhp"]) + gain
		p["hp"] = int(p["hp"]) + gain
		# f3_610c: each of the five attack spells s gains one when the new level is >= s + 2
		for s in 5:
			if int(p["level"]) >= s + 2:
				add_spells(s, 1)
		emit_signal("leveled", int(p["level"]))
	else:
		# f3_6082 (only above level 1): lose hit points; spells come off as they came on
		lose_hit_points()
		for s in 5:
			if int(p["level"]) + 1 >= s + 2 and int(spell_counts()[s]) > 0:
				add_spells(s, -1)
	emit_signal("stats_changed")

## A monster's attack, as in f3_2df2: it rolls random(10 x defence + your armor class) - defence is
## 2, or 1 / 4 after a potion of invincibility / vulnerability - and misses unless the roll beats
## 5 + dexterity - floor.  Below floor 10, a hit becomes the monster's special attack when
## random(100) > 65 - floor; otherwise it does random(floor / 2 + 2), halved by the helm of protection.
func monster_attack(m: Dictionary) -> void:
	emit_signal("monster_attacked", m)
	var md: Dictionary = Data.monsters()[int(m["idx"])]
	var mname: String = md["name"]
	var dfc := int(p["floor_fx"].get("defence", 2))
	var roll := rng.randi_range(1, maxi(1, 10 * dfc + armor_class()))
	if roll <= 5 + int(p.get("dex", 12)) - depth:
		emit_signal("message", "The %s missed you." % mname)
		return
	var sa := int(md["special_attack"])
	if sa > 0 and depth > 10 and rng.randi_range(1, 100) > 65 - depth:
		emit_signal("monster_hit", m)
		special_attack(m, md, sa)
		return
	emit_signal("monster_hit", m)
	var dmg := rng.randi_range(1, depth / 2 + 2)
	if _helm(HELM_PROTECTION):
		dmg /= 2
	var verb: String = md["verb"] if str(md["verb"]) != "" else "hit"
	emit_signal("message", "The %s %s you." % [mname, verb])
	hurt(dmg)

## Special attacks use the original message table (STR# 150 "mon off messages").
## Monster special attacks, as in f4_2484 (a 42-way switch on the monster's attack number).  Each
## family has its own protection: the amulet of spellshield stops spells, the helm of protection stops
## drains, stoning, poison, freezing and armor curses, and a scroll of silence stops shrieks and wails.
const SA_SPELLS := [3, 11, 13, 17, 34, 35, 39, 41, 42]
const SA_HELM := [12, 14, 16, 20, 22, 23, 27, 30, 31, 33, 37]
const SA_SOUND := [5, 10]
const SA_HELM_HALF := [20, 22, 23, 31, 37]      # the helm only saves you half the time against these

const DEVILS := [13, 63, 72, 94]      # lemure, bone, snow and arch devil (STR# ids)

func special_attack(m: Dictionary, md: Dictionary, sa: int) -> void:
	var mname: String = md["name"]
	if _amulet(4) and DEVILS.has(int(md["id"])):
		emit_signal("message", "The %s tried a special attack, but your amulet of devil scourge protected you." % mname)
		return
	if sa in SA_SPELLS and _amulet(0):
		emit_signal("message", "The %s cast a spell, but your amulet of spellshield turned it aside." % mname)
		return
	if sa in SA_HELM and _helm(HELM_PROTECTION) and (not (sa in SA_HELM_HALF) or rng.randi_range(1, 100) > 50):
		emit_signal("message", "The " + mname + Data.s("helm_save_messages", sa) + Data.s("helm_save_messages", 0))
		return
	if sa in SA_SOUND and fx("silence"):
		emit_signal("message", "The %s made no sound at all." % mname)
		return
	emit_signal("message", "The " + mname + Data.s("monster_attack_messages", sa - 1))
	emit_signal("note", "The " + mname + Data.s("monster_attack_messages", sa - 1))
	match sa:
		1:                                          # liquid fire: 1-4 per floor number
			hurt(_per_floor(4))
		8:                                          # digestive juices: 6-10
			hurt(rng.randi_range(1, 5) + 5)
		26:                                         # gale winds: 3-10
			hurt(rng.randi_range(1, 8) + 2)
		2, 9:                                       # stunned / caught in a web: two more blows
			_normal_hit(md)
			_normal_hit(md)
		24:                                         # nauseating smell: one more blow
			_normal_hit(md)
		18:                                         # choking gas: sometimes one more blow
			if rng.randi_range(1, 100) <= 25:
				_normal_hit(md)
		4: _drain("str", 1)                         # weakening spores (every third hit)
		7: _drain("str", 2)                         # blood drain
		23: _drain("str", 3)                        # poisoned barb: strength -1 every time, no damage
		25: _drain("dex", 1)                        # slowed reflexes
		28: _drain("lk", 1)                         # reduced luck
		32: _drain("iq", 1)                         # drained brains
		6, 19, 27, 29, 30, 40:                      # hole, rust, curse, crush, burn, acid: the armor suffers
			if int(p["armor"]["type"]) >= 0:
				p["armor"]["bonus"] = int(p["armor"]["bonus"]) - 1
		12, 16:                                     # drained experience: a quarter of the next threshold
			if sa == 16:
				hurt(rng.randi_range(1, 7) + 3)     # the shadow also does 4-10 damage
			p["xp"] = maxi(0, int(p["xp"]) - xp_for_next() / 4)
			# f6_024e: below half the threshold (over 100), the threshold halves and a level is lost
			if int(p["xp"]) < xp_for_next() / 2 and xp_for_next() > 100 and int(p["level"]) > 1:
				p["xp_next"] = xp_for_next() / 2
				change_level(-1)
		14:                                         # drained a level (never below level 1)
			if int(p["level"]) > 1:
				p["xp_next"] = maxi(50, xp_for_next() / 2)
				p["xp"] = int(p["xp_next"]) - int(p["xp_next"]) / 4
				change_level(-1)
		15:                                         # deadly spores: death if random(25) + luck < 25 - level
			if rng.randi_range(1, 25) + int(p.get("lk", 12)) < 25 - int(p["level"]):
				emit_signal("message", Data.s("monster_attack_extra", 1))     # "Suddenly you can't breath."
				p["hp"] = -10
			else:
				emit_signal("message", Data.s("monster_attack_extra", 0))     # "Luckily you didn't breath any."
		36:                                         # returned your blow: your own sword's damage
			var t := _orig_sword()
			var dmg: int = rng.randi_range(1, maxi(1, 2 * t - t / 3)) + int(p.get("str", 12)) - 15 + int(p["sword"]["bonus"])
			if _helm(HELM_WARRIOR) or _ring(RING_POWER):
				dmg += dmg / 2
			hurt(maxi(0, dmg))
		38:                                         # stole a ration
			if int(p.get("rations", 0)) > 0:
				p["rations"] = int(p["rations"]) - 1
		39:                                         # transmuted your armor
			p["armor"] = {"type": rng.randi_range(0, 4), "bonus": 0}
		42:                                         # transmuted your sword (and armor)
			p["sword"] = {"type": rng.randi_range(0, 4), "bonus": 0}
			p["armor"] = {"type": rng.randi_range(0, 4), "bonus": 0}
		21:                                         # disappeared
			level()["monsters"].erase(m)
		3, 13:                                      # fire, blizzard spells: 1-3 per floor number
			hurt(_per_floor(3))
		17:                                         # cold spell: 1-4 per floor number
			hurt(_per_floor(4))
		34:                                         # frost spell: 1-2 per floor number, plus 6-12
			hurt(_per_floor(2) + rng.randi_range(1, 7) + 5)
		41:                                         # inferno: 1-10 per floor number, divided by 3
			hurt(_per_floor(10) / 3)
		35:                                         # flamed you and your armor: 6-10
			hurt(rng.randi_range(1, 5) + 5)
			if int(p["armor"]["type"]) >= 0:
				p["armor"]["bonus"] = int(p["armor"]["bonus"]) - 1
		11:                                         # dissolved some gold
			p["gold"] = int(p["gold"]) * 3 / 4
		20, 5:                                      # confused / piercing shriek
			if sa == 5 or rng.randi_range(1, 100) > 50:
				p["floor_fx"]["slowed"] = true
		22, 31:                                     # turned to stone: there is no hope
			emit_signal("message", Data.s("monster_attack_extra", 6))         # "I'm afraid there is no hope for you."
			p["hp"] = -10
		37:                                         # horrible scream: frozen while it strikes 1-4 more times
			for i in rng.randi_range(1, 4):
				_normal_hit(md)
		33:                                         # ice spell: 1-3 per floor number, plus 10-15
			var ice := 0
			for i in depth:
				ice += rng.randi_range(1, 3)
			hurt(ice + rng.randi_range(1, 6) + 9)
		10:                                         # terrible wailing (its own sound, 14000)
			Sfx.play_id(14000)
			if rng.randi_range(1, 100) > 61:
				hurt(rng.randi_range(1, 4))
		_:
			_normal_hit(md)
	emit_signal("stats_changed")

## One roll of 1..n for every floor number, added up (how the original sizes many special attacks).
func _per_floor(n: int) -> int:
	var t := 0
	for i in depth:
		t += rng.randi_range(1, n)
	return t

## An ordinary blow (f3_2f86): random(floor / 2 + 2), halved by the helm of protection.
func _normal_hit(md: Dictionary) -> void:
	var dmg := rng.randi_range(1, depth / 2 + 2)
	if _helm(HELM_PROTECTION):
		dmg /= 2
	hurt(dmg)

## Draining attacks build up (f4_2484): each hit adds to a counter; once it passes 2 the stat drops by one
## (f2_46ee rules: only while it is between 13 and 24) and the counter keeps the remainder after 3.
func _drain(stat: String, amount: int) -> void:
	var key := "drain_" + stat
	p[key] = int(p.get(key, 0)) + amount
	if int(p[key]) > 2:
		p[key] = int(p[key]) % 3
		var before := int(p.get(stat, 12))
		_stat_step(stat, false)
		if int(p.get(stat, 12)) != before:
			var nm: String = {"str": "strength", "dex": "dexterity", "lk": "luck", "iq": "IQ"}[stat]
			emit_signal("message", "Your %s has been reduced from %d to %d." % [nm, before, int(p[stat])])

## "You are now level 4 (FIGHTER 2ND CLASS).  Maximum hit points raised from 31 to 38.  Spells gained: ..."
func _report_level_change(b: Dictionary) -> void:
	var lv := int(p["level"])
	if lv == int(b["level"]):
		return
	var parts: Array = ["You are now level %d (%s)." % [lv, title()]]
	parts.append(_changed("Maximum hit points", int(b["maxhp"]), int(p["maxhp"])))
	var gained: Array = []
	var lost: Array = []
	var sc: Array = spell_counts()
	var old_sc: Array = b["spells"]
	for s in mini(sc.size(), old_sc.size()):
		var dlt: int = int(sc[s]) - int(old_sc[s])
		if dlt > 0:
			gained.append("%s +%d" % [Data.s("spell_names", s), dlt])
		elif dlt < 0:
			lost.append("%s %d" % [Data.s("spell_names", s), dlt])
	if gained.size() > 0:
		parts.append("Spells gained: %s." % ", ".join(PackedStringArray(gained)))
	if lost.size() > 0:
		parts.append("Spells lost: %s." % ", ".join(PackedStringArray(lost)))
	if lv > int(b["level"]):
		var gold := 0
		for l in range(int(b["level"]) + 1, lv + 1):
			gold += 100 * l
		parts.append("Gold received: %d." % gold)
	emit_signal("message", "  ".join(PackedStringArray(parts)))

func hurt(n: int) -> void:
	p["hp"] = int(p["hp"]) - n
	Sfx.play("player_hurt")
	emit_signal("stats_changed")

func dead() -> bool:
	return int(p["hp"]) <= 0

# ------------------------------------------------------------ end of turn
func end_turn() -> void:
	if not combat_enabled:
		for mm in level()["monsters"]:
			mm["engaged"] = false
		_end_turn_rest()
		return
	p["moves"] = int(p["moves"]) + 1
	var L := level()
	var px: int = p["x"]
	var py: int = p["y"]
	# Monsters wait where they are until you meet them (they come into view ahead) or step
	# next to them.  Only one monster fights you at a time: the one already engaged attacks;
	# others hold back until it is dead.
	if int(p.get("calm", 0)) > 0:
		p["calm"] = int(p["calm"]) - 1
		_end_turn_rest()
		return
	var engaged := {}
	var moved_now: bool = bool(p.get("moved", false))
	p["moved"] = false
	p["moved_turn"] = moved_now
	for m in L["monsters"]:
		# only a monster you have met (seen) fights; the UI announces any you haven't
		if bool(m.get("engaged", false)):
			engaged = m          # a fight in progress continues; nobody else joins
	var newly := false
	if engaged.is_empty():
		for m in L["monsters"]:
			if absi(int(m["x"]) - px) + absi(int(m["y"]) - py) == 1 and bool(m.get("met", false)) and not bool(m.get("passive", false)) \
					and open_between(Vector2i(px, py), Vector2i(int(m["x"]), int(m["y"]))):
				m["awake"] = true
				engaged = m
				newly = true          # a fight that starts now: you strike first
				break
	for m in L["monsters"]:
		m["engaged"] = is_same(m, engaged)
	if not engaged.is_empty() and not dead() and not newly:
		monster_attack(engaged)
	elif false and not dead() and moved_now:      # (monsters stay where they are: you walk up to them)
		# an awake, unengaged monster may close in (one step) if nothing else is fighting you - only
		# when you have moved to another space this turn
		for m in L["monsters"]:
			if not m["awake"] or not bool(m.get("met", false)):
				continue
			var mx: int = m["x"]
			var my: int = m["y"]
			var best := Vector2i(mx, my)
			var bd := absi(mx - px) + absi(my - py)
			for dv in [Vector2i(1, 0), Vector2i(-1, 0), Vector2i(0, 1), Vector2i(0, -1)]:
				var n: Vector2i = Vector2i(mx, my) + dv
				if not open_between(Vector2i(mx, my), n) or tile(n.x, n.y) != LevelGen.T.FLOOR:
					continue
				if not monster_at(n.x, n.y).is_empty() or (n.x == px and n.y == py):
					continue
				var nd := absi(n.x - px) + absi(n.y - py)
				if nd < bd:
					bd = nd
					best = n
			m["x"] = best.x
			m["y"] = best.y
			break
	_end_turn_rest()

func _end_turn_rest() -> void:
	var L := level()
	var px: int = p["x"]
	var py: int = p["y"]
	# hunger (STR# 500 messages)
	# ring of regeneration-like effects
	if _ring(RING_HEALING) and int(p["hp"]) < int(p["maxhp"]) and bool(p.get("moved_turn", false)):
		# f5_40ca(2): heals random(2 x level) per step, up to your maximum
		p["hp"] = mini(int(p["maxhp"]), int(p["hp"]) + rng.randi_range(1, 2 * int(p["level"])))
	# occasional wandering monster
	if rng.randf() < 0.005 and L["monsters"].size() < 6:
		var r: Array = L["rooms"][rng.randi_range(0, L["rooms"].size() - 1)]
		var c := Vector2i(int(r[0]) + rng.randi_range(0, int(r[2]) - 1), int(r[1]) + rng.randi_range(0, int(r[3]) - 1))
		if tile(c.x, c.y) == LevelGen.T.FLOOR and monster_at(c.x, c.y).is_empty() and (c.x != px or c.y != py):
			L["monsters"].append(LevelGen.make_monster(depth, rng, c))
	emit_signal("stats_changed")

## Hunger grows only when you move to a new space (f2_4724 is called from the move routine) - not
## when you turn, fight or use things.
func hunger_step() -> void:
	p["moved"] = true                  # (monsters only close in after you have stepped)
	# f2_4724: hunger grows by 0 (amulet of feast), 3 (amulet of hunger) or 1 per step
	p["hunger"] = int(p["hunger"]) + (0 if _amulet(1) else (3 if _amulet(3) else 1))
	var h: int = p["hunger"]
	# hunger stages (f2_4724 / f6_2f0c): the original's table (100, 120, 140, 155, 160) - a warning
	# (DLOG 500) as each of the first four is passed, starvation at the last.  The stage also weakens
	# your blows (f3_6232).
	var stage := int(p.get("hunger_stage", 0))
	var limits := [100, 120, 140, 155]
	while stage < limits.size() and h >= int(limits[stage]):
		emit_signal("popup", Data.s("hunger_messages", stage))
		stage += 1
	if h >= 160:
		p["hp"] = 0                    # starved
	p["hunger_stage"] = stage

func eat_ration() -> bool:
	if int(p.get("rations", 0)) <= 0:
		return false
	p["rations"] = int(p["rations"]) - 1
	eat()
	return true

func eat() -> void:
	p["hunger"] = 0
	p["hunger_stage"] = 0          # f6_1d16: eating clears the hunger counter and stage
	emit_signal("popup", Data.s("hunger_messages", 4))     # "Wow! That was good. ..." in a dialog
	Sfx.play("eat")

# ------------------------------------------------------------ items
func use_item(i: int) -> String:
	var it: Dictionary = p["pack"][i]
	var k: String = it["kind"]
	var t := int(it.get("type", 0))
	if k in ["ring", "helm", "amulet"]:
		identify(k, t)                 # putting it on shows what it is
	match k:
		"wand":
			return "wand"                # fired by the caller (zap), in or out of a fight
		"food":
			p["pack"].remove_at(i)
			eat()
		"potion":
			p["pack"].remove_at(i)
			pass                                  # (the potion's sound is played by the UI)
			drink(t)
		"scroll":
			p["pack"].remove_at(i)
			Sfx.play("scroll")
			return read_scroll(t)
		"wand":
			return "wand"
		"armor", "sword", "shield":
			var old: Dictionary = p[k]
			p[k] = {"type": t, "bonus": int(it.get("bonus", 0))}
			p["pack"].remove_at(i)
			var keep_old: bool = (k == "sword" and int(old["type"]) < 5) or (k != "sword" and int(old["type"]) >= 0 and int(old["type"]) <= 4)
			# one of each kind is worn at a time: the old one goes back into the pack
			if keep_old:
				p["pack"].append({"kind": k, "type": int(old["type"]), "bonus": int(old["bonus"])})
			emit_signal("message", "You are now using the %s." % item_name(it))
		"ring", "helm", "amulet":
			var old2 = p[k]
			p[k] = it
			p["pack"].remove_at(i)
			if old2 != null:
				p["pack"].append(old2)
			emit_signal("message", "You put on the %s." % item_name(it))
			if k == "ring" and t == RING_KNOWLEDGE:
				emit_signal("message", "Your mind feels sharper.")
	emit_signal("stats_changed")
	return ""

## Potions (STR# 701 0-18, messages STR# 711)
## Potions, as in f3_5b6c.  Attribute changes go through f2_46ee(stat, low, high, step): the
## stat changes only while low <= stat < high (raise: 12..25, lower: 13..25).
func _stat_step(key: String, up: bool) -> void:
	var v := int(p.get(key, 12))
	var low := 12 if up else 13
	if v >= low and v < 25:
		p[key] = v + (1 if up else -1)

## Lose hit points (f3_5fc2): maximum drops by 1..min(8, max - 2); nothing if the maximum is below 2.
func lose_hit_points() -> void:
	var mx := int(p["maxhp"])
	if mx < 2:
		return
	var n := (mx - 2) if mx < 8 else 8
	if n >= 1:
		p["maxhp"] = mx - rng.randi_range(1, n)
	p["hp"] = mini(int(p["hp"]), int(p["maxhp"]))

func drink(t: int) -> void:
	identify("potion", t)
	var nm := Data.s("potions", t)
	var before := {"str": int(p.get("str", 12)), "dex": int(p.get("dex", 12)), "lk": int(p.get("lk", 12)), "iq": int(p.get("iq", 12)),
		"maxhp": int(p["maxhp"]), "hp": int(p["hp"]), "level": int(p["level"])}
	match t:
		0: _stat_step("str", true)              # hercules
		1: _stat_step("str", false)             # wimps
		2: _stat_step("dex", true)              # agility
		3: _stat_step("dex", false)             # clumsiness
		4: p["hp"] = p["maxhp"]                 # healing (f3_5f66)
		5:                                      # add hit points (f3_5f7c): maximum +1..7
			var full: bool = int(p["hp"]) == int(p["maxhp"])
			p["maxhp"] = int(p["maxhp"]) + rng.randi_range(1, 7)
			if full:
				p["hp"] = p["maxhp"]
		6: lose_hit_points()                    # lose hit points (f3_5fc2)
		7: p["floor_fx"]["defence"] = 1         # invincibility (g_77c6 = 1; normally 2)
		8: p["floor_fx"]["defence"] = 4         # vulnerability (g_77c6 = 4)
		9: _stat_step("lk", true)               # good luck
		10: _stat_step("lk", false)             # bad luck
		11: _stat_step("iq", true)              # einstein
		12: _stat_step("iq", false)             # stupidity
		13:                                     # decrease level (f3_6082)
			if int(p["level"]) > 1:
				p["xp_next"] = maxi(50, xp_for_next() / 2)
				p["xp"] = p["xp_next"] - int(p["xp_next"]) / 4
				change_level(-1)
		14:                                     # increase level (f3_610c)
			var old_next := xp_for_next()
			p["xp_next"] = old_next * 2
			p["xp"] = old_next + 2
			change_level(1)
		15: p["floor_fx"]["to_hit"] = 3         # heroes      (g_77c4 = +3)
		16: p["floor_fx"]["to_hit"] = -3        # cowards     (g_77c4 = -3)
		17: p["floor_fx"]["to_hit"] = 6         # super-heroes (g_77c4 = +6)
		18: p["floor_fx"]["to_hit"] = -6        # terror      (g_77c4 = -6)
	var res := _potion_result(t, before)
	emit_signal("message", ("You drank a potion of %s.  %s" % [nm, res]).strip_edges())
	emit_signal("stats_changed")

## What a potion actually did, in words.
func _potion_result(t: int, b: Dictionary) -> String:
	var names := {"str": "strength", "dex": "dexterity", "lk": "luck", "iq": "IQ"}
	var stat_of := {0: "str", 1: "str", 2: "dex", 3: "dex", 9: "lk", 10: "lk", 11: "iq", 12: "iq"}
	if stat_of.has(t):
		var k: String = stat_of[t]
		return _changed("Your " + str(names[k]), int(b[k]), int(p.get(k, 12)))
	match t:
		4:
			if int(b["hp"]) >= int(p["maxhp"]):
				return "Your hit points were already full (%d)." % int(p["maxhp"])
			return "Your hit points have been restored from %d to %d." % [int(b["hp"]), int(p["hp"])]
		5, 6: return _changed("Your maximum hit points", int(b["maxhp"]), int(p["maxhp"]))
		7: return "Monsters will find you much harder to hit for the rest of this level."
		8: return "Monsters will find you much easier to hit for the rest of this level."
		13, 14: return _changed("Your level", int(b["level"]), int(p["level"]))
		15: return "Your chance to hit has been raised by 3 for the rest of this level."
		16: return "Your chance to hit has been reduced by 3 for the rest of this level."
		17: return "Your chance to hit has been raised by 6 for the rest of this level."
		18: return "Your chance to hit has been reduced by 6 for the rest of this level."
	return ""

## "Your luck has been reduced from 14 to 13." / "... raised from ..." / "... stays at 12."
func _changed(what: String, before: int, now: int, signed: bool = false) -> String:
	var fmt := "%+d" if signed else "%d"
	if now > before:
		return ("%s has been raised from " + fmt + " to " + fmt + ".") % [what, before, now]
	if now < before:
		return ("%s has been reduced from " + fmt + " to " + fmt + ".") % [what, before, now]
	return ("%s stays at " + fmt + ".") % [what, now]

## How much a curse scroll takes: nothing with the amulet of feast, 3 with the (cursed) amulet of demonbane,
## otherwise 1 - the original's curse routines test exactly these two amulets.
func _curse_amount() -> int:
	if _amulet(1):
		return 0
	if _amulet(5):
		return 3
	return 1

func read_scroll(t: int) -> String:
	identify("scroll", t)
	var nm := Data.s("scrolls", t)
	var b := {"gold": int(p["gold"]), "pack": (p["pack"] as Array).size(), "str": int(p.get("str", 12)), "dex": int(p.get("dex", 12)),
		"sword": (p["sword"] as Dictionary).duplicate(), "armor": (p["armor"] as Dictionary).duplicate(), "shield": (p["shield"] as Dictionary).duplicate()}
	if t == 0 or t == 1:
		emit_signal("message", "You read a scroll of %s." % nm)    # teleport / knowledge: the rest follows
	var sw: Dictionary = p["sword"]
	var ar: Dictionary = p["armor"]
	var sh: Dictionary = p["shield"]
	var has_sword: bool = int(sw["type"]) < 5
	var has_armor: bool = int(ar["type"]) >= 0
	var has_shield: bool = int(sh["type"]) >= 0
	match t:
		0: return "teleport"                     # f4_55b8: 1-3 floors up or down
		1: return "knowledge"                    # identify every carried item of one type (DITL 715)
		2:                                       # remove curse (f4_569a): negative bonuses back to 0
			for k in ["sword", "armor", "shield"]:
				p[k]["bonus"] = maxi(0, int(p[k]["bonus"]))
		3: if has_armor and int(ar["bonus"]) < 8: ar["bonus"] = int(ar["bonus"]) + 1     # f4_57d0
		4: if has_armor and int(ar["bonus"]) > -4: ar["bonus"] = int(ar["bonus"]) - _curse_amount()    # f4_581c
		5: if has_sword and int(sw["bonus"]) < 8: sw["bonus"] = int(sw["bonus"]) + 1     # f4_57f6
		6: if has_sword and int(sw["bonus"]) > -4: sw["bonus"] = int(sw["bonus"]) - _curse_amount()    # f4_5862
		7: map_level()                                                                  # f2_6b24
		8: p["gold"] = int(p["gold"]) + maxi(300, int(p["gold"]) / 2)                   # f4_58a8
		9: p["floor_fx"]["silence"] = true       # f4_58d8: shrieks and wails are silenced this floor (f4_2484)
		10:                                      # f4_58f0: strength and dexterity +1 (12..25)
			_stat_step("str", true)
			_stat_step("dex", true)
		11:                                      # dispel magic (f4_5928): armor, shield and sword bonuses cleared
			ar["bonus"] = 0
			sh["bonus"] = 0
			sw["bonus"] = 0
		12:                                      # f4_59ec = enhance armor + enhance weapon
			if has_armor and int(ar["bonus"]) < 8: ar["bonus"] = int(ar["bonus"]) + 1
			if has_sword and int(sw["bonus"]) < 8: sw["bonus"] = int(sw["bonus"]) + 1
		13: p["sword"] = {"type": rng.randi_range(0, 4), "bonus": 0}    # f4_5a96: random sword
		14: p["armor"] = {"type": rng.randi_range(0, 4), "bonus": 0}    # f4_59fc: random armor
		15: if has_shield and int(sh["bonus"]) < 8: sh["bonus"] = int(sh["bonus"]) + 1   # f4_5ae8
		16: if has_shield and int(sh["bonus"]) > -4: sh["bonus"] = int(sh["bonus"]) - _curse_amount()  # f4_5b0c
		17: p["pack"] = p["pack"].filter(func(x): return x["kind"] != "wand")                     # f4_5b30
		18: p["shield"] = {"type": -1, "bonus": 0}                                                # f4_5b64
		19: p["pack"] = p["pack"].filter(func(x): return not ["armor", "sword"].has(x["kind"]))  # f4_5bd0
		20: p["pack"] = []                       # netherworld (f4_5c16): everything you carry is destroyed
		21:                                      # identify wands (f2_2944 with type 3)
			for x in p["pack"]:
				if x["kind"] == "wand":
					identify("wand", int(x["type"]))
	emit_signal("message", ("You read a scroll of %s.  %s" % [nm, _scroll_result(t, b)]).strip_edges())
	emit_signal("stats_changed")
	return ""

## What a scroll actually did, in words.
func _scroll_result(t: int, b: Dictionary) -> String:
	var gone: int = int(b["pack"]) - (p["pack"] as Array).size()
	var sw0: Dictionary = b["sword"]
	var ar0: Dictionary = b["armor"]
	var sh0: Dictionary = b["shield"]
	match t:
		2:
			var cursed: Array = []
			for k in ["sword", "armor", "shield"]:
				if int((b[k] as Dictionary)["bonus"]) < 0:
					cursed.append(k)
			if cursed.is_empty():
				return "Nothing you carry was cursed."
			return "The curse has been lifted from your %s." % " and ".join(PackedStringArray(cursed))
		3, 4:
			if int(ar0["type"]) < 0:
				return "You have no armor, so nothing happens."
			return _changed("Your armor bonus", int(ar0["bonus"]), int(p["armor"]["bonus"]), true)
		5, 6:
			if int(sw0["type"]) >= 5:
				return "You have no sword, so nothing happens."
			return _changed("Your sword bonus", int(sw0["bonus"]), int(p["sword"]["bonus"]), true)
		7: return "The whole map of this level has been revealed."
		8: return _changed("Your gold", int(b["gold"]), int(p["gold"]))
		9: return "Monsters' shrieks and wails will have no effect for the rest of this level."
		10:
			return "%s  %s" % [_changed("Your strength", int(b["str"]), int(p.get("str", 12))), _changed("Your dexterity", int(b["dex"]), int(p.get("dex", 12)))]
		11:
			return "All the magic on your sword, armor and shield is gone (sword %+d, armor %+d, shield %+d before)." % [int(sw0["bonus"]), int(ar0["bonus"]), int(sh0["bonus"])]
		12:
			return "%s  %s" % [_changed("Your sword bonus", int(sw0["bonus"]), int(p["sword"]["bonus"]), true), _changed("Your armor bonus", int(ar0["bonus"]), int(p["armor"]["bonus"]), true)]
		13:
			var was: String = Data.s("swords", int(sw0["type"])) if int(sw0["type"]) < 5 else "bare hands"
			return "Your %s has turned into %s." % [was, with_article(Data.s("swords", int(p["sword"]["type"])))]
		14:
			var wa: String = Data.s("armors", int(ar0["type"])) if int(ar0["type"]) >= 0 else "lack of armor"
			return "Your %s has turned into %s." % [wa, Data.s("armors", int(p["armor"]["type"]))]
		15, 16:
			if int(sh0["type"]) < 0:
				return "You have no shield, so nothing happens."
			return _changed("Your shield bonus", int(sh0["bonus"]), int(p["shield"]["bonus"]), true)
		17: return ("%d wand%s destroyed." % [gone, " was" if gone == 1 else "s were"]) if gone > 0 else "You had no wands, so nothing happens."
		18: return "Your %s has been destroyed." % Data.s("shields", int(sh0["type"])) if int(sh0["type"]) >= 0 else "You had no shield, so nothing happens."
		19: return ("%d piece%s of spare equipment destroyed." % [gone, " was" if gone == 1 else "s were"]) if gone > 0 else "You had no spare equipment, so nothing happens."
		20: return "Everything you were carrying has been destroyed (%d item%s)." % [gone, "" if gone == 1 else "s"]
		21: return "Your wands have been identified."
	return ""

func identify_kind(kind: String) -> void:
	for x in p["pack"]:
		if str(x["kind"]) == kind:
			identify(kind, int(x.get("type", 0)))
	if p.get(kind) != null and p[kind] is Dictionary and p[kind].has("type"):
		identify(kind, int(p[kind]["type"]))
	emit_signal("stats_changed")

## Wands (STR# 701 41-48): fire a bolt in the facing direction.
## Wands, as in f7_1b6e (wand = item code - 42; a 15-entry jump table).  Damage is f2_79a8(n),
## i.e. 1..n; the slayers set the monster's health to -1 (an instant kill) when its type is on their
## list (types are 0-based: type T is STR# T + 1); aggression's entry goes straight to the exit.
const SLAYER_TARGETS := {
	3: [14, 29, 36, 54, 80, 90, 95],      # demon slayer: mane demon and the undead (ghoul ... lich)
	7: [65, 66, 71, 88],                  # giant slayer: stone, fire, frost, cloud giant
	12: [13, 63, 72, 94],                 # devil slayer: lemure, bone, snow, arch devil
	14: [31, 46, 73, 89],                 # dragon-slayer: white, green, red, black dragon
}
const WAND_DAMAGE := {0: 6, 1: 12, 2: 18, 4: 4, 5: 8, 6: 12}   # heat, fire, inferno, cold, frost, ice

func zap(i: int) -> void:
	# a wand has a single charge: it is used up when fired
	var it: Dictionary = p["pack"][i]
	p["pack"].remove_at(i)
	emit_signal("stats_changed")
	Sfx.play("wand")
	var t := int(it["type"])
	var target := _first_monster_in_line()
	if target.is_empty():
		emit_signal("message", "The bolt from your wand hits nothing.")
		return
	var md: Dictionary = Data.monsters()[int(target["idx"])]
	var mname := str(md["name"])
	target["met"] = true
	target["awake"] = true
	if WAND_DAMAGE.has(t):
		var dmg := special_defense(target, md, rng.randi_range(1, int(WAND_DAMAGE[t])), 2)   # f6_1f50
		if dmg <= 0:
			return
		emit_signal("message", "Your wand of %s hits the %s." % [Data.s("wands", t), mname])
		target["hp"] = int(target["hp"]) - dmg
	elif SLAYER_TARGETS.has(t):
		if (SLAYER_TARGETS[t] as Array).has(int(md["id"])):
			emit_signal("message", "Your wand of %s slays the %s!" % [Data.s("wands", t), mname])
			target["hp"] = -1
		else:
			emit_signal("message", "Your" + Data.s("monster_defense_messages", 0) + mname + ".")
			return
	else:
		match t:
			WAND_AGGRESSION:
				emit_signal("message", "Nothing happens.")       # its jump-table entry does nothing
				return
			WAND_PEACE:
				# adds 1-6 to the value the combat hit roll is measured against (-$735e)
				target["peace"] = int(target.get("peace", 0)) + rng.randi_range(1, 6)
				emit_signal("message", "The %s seems less on its guard." % mname)
				return
			WAND_YOUTH, WAND_AGING:
				# the monster gains one roll of its hit die per floor above the first (youth) or
				# per floor plus one (aging); its maximum is set to the new total
				var rolls: int = (depth - 1) if t == WAND_YOUTH else (depth + 1)
				var hd: int = maxi(1, int(md["hit_dice"]))
				for r in maxi(0, rolls):
					target["hp"] = int(target["hp"]) + rng.randi_range(1, hd)
				target["maxhp"] = int(target["hp"])
				emit_signal("message", "The %s looks %s and stronger!" % [mname, "younger" if t == WAND_YOUTH else "older"])
				return
			WAND_MONSTER_HEALING:
				target["hp"] = target["maxhp"]
				emit_signal("message", "The %s is completely healed!" % mname)
				return
	if int(target["hp"]) <= 0:
		kill(target)

func spell_counts() -> Array:
	if not p.has("spell_counts"):
		p["spell_counts"] = [int(p.get("spells", 0)), 0, 0, 0, 0, 0]
	return p["spell_counts"]

func add_spells(tier: int, n: int) -> void:
	var sc := spell_counts()
	sc[clampi(tier, 0, 5)] = maxi(0, int(sc[clampi(tier, 0, 5)]) + n)
	var total := 0
	for v in sc:
		total += int(v)
	p["spells"] = total

## Spells, as in f7_3752 (spell n = 1..6 in the original): the charge is used first; DEATH kills
## every monster on the level; the others face a resistance roll - they fail when
## IQ + level < random(1 .. 25 + level) - and otherwise do random(1..15) + 15 x (n - 1) damage.
## Two flags: g_720f skips the roll (set by the failsafe-spells reward, f6_1c1a) and g_7207 forces a
## failure (the helm of stupidity; the helm flags count from 1 at -$720b).
func cast_spell(chosen_tier: int = -1) -> void:
	var sc := spell_counts()
	if chosen_tier < 0:
		for t in range(5, -1, -1):
			if int(sc[t]) > 0:
				chosen_tier = t
				break
	if chosen_tier < 0 or int(sc[chosen_tier]) <= 0:
		emit_signal("message", "You have no magic spells left.")
		Sfx.play("failed_spell")
		return
	var t := chosen_tier
	if t == 5:          # DEATH
		add_spells(5, -1)
		emit_signal("message", "All monsters on this floor have been vanquished.")
		vanquish_all()
		return
	var target := _first_monster_in_line()
	if target.is_empty():
		emit_signal("message", "There is no monster in that direction.")
		return
	add_spells(t, -1)
	var md: Dictionary = Data.monsters()[int(target["idx"])]
	emit_signal("message", "You cast %s at the %s." % [Data.s("spell_names", t), md["name"]])
	target["awake"] = true
	target["met"] = true
	var always: bool = bool(p.get("failsafe_spells", false))
	var never: bool = p["helm"] != null and int(p["helm"]["type"]) == HELM_STUPIDITY
	var resisted: bool = never or (not always and int(p.get("iq", 12)) + int(p["level"]) < rng.randi_range(1, 25 + int(p["level"])))
	if resisted:
		Sfx.play("failed_spell")
		emit_signal("message", "The %s resisted your spell." % md["name"])
		emit_signal("stats_changed")
		return
	Sfx.play("spell")
	var sdmg := special_defense(target, md, rng.randi_range(1, 15) + 15 * t, 2)
	if sdmg <= 0:
		emit_signal("stats_changed")
		return
	target["hp"] = int(target["hp"]) - sdmg
	if int(target["hp"]) <= 0:
		kill(target)
	emit_signal("stats_changed")

func _first_monster_in_line() -> Dictionary:
	if not monster_here().is_empty():
		return monster_here()            # the monster you are fighting, on your own space
	var d: Vector2i = DIRS[int(p["dir"])]
	var c := Vector2i(int(p["x"]), int(p["y"]))
	for i in 12:
		if not open_between(c, c + d):
			return {}
		c += d
		var m := monster_at(c.x, c.y)
		if not m.is_empty():
			return m
	return {}

# ------------------------------------------------------------ save / load
## The problem options a new player starts with (Problem Options > Defaults).
const DEFAULT_OPTIONS := {"counting": true, "math_add": true, "math_sub": true, "math_mul": true, "math_div": true,
	"deduction": true, "coins": true, "teaser": true, "words4": true, "words5": true, "words6": true,
	"max_sum": 20, "max_mult": 10, "max_count": 20, "synonyms": true, "capitals": true, "words": true}

## Preferences (user://prefs.json): the Set Problem Options choices, loaded at startup.
const PREFS_PATH := "user://prefs.json"

func load_prefs() -> void:
	if not FileAccess.file_exists(PREFS_PATH):
		return
	var f := FileAccess.open(PREFS_PATH, FileAccess.READ)
	if f == null:
		return
	var v = JSON.parse_string(f.get_as_text())
	if v is Dictionary and (v as Dictionary).has("options"):
		for k in (v["options"] as Dictionary).keys():
			if options.has(k):
				options[k] = v["options"][k]
	if v is Dictionary and (v as Dictionary).has("ui"):
		prefs_ui = v["ui"]

func save_prefs() -> void:
	var f := FileAccess.open(PREFS_PATH, FileAccess.WRITE)
	if f:
		f.store_string(JSON.stringify({"options": options, "ui": prefs_ui}))

func save() -> void:
	var f := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	if f == null:
		emit_signal("message", "Could not save the game.")
		return
	f.store_string(JSON.stringify({"p": p, "levels": levels, "depth": depth,
		"crystal_levels": crystal_levels, "options": options, "version": "1.0"}))
	emit_signal("message", "Game saved.")

func has_save() -> bool:
	return FileAccess.file_exists(SAVE_PATH)

func load_game() -> bool:
	var v = JSON.parse_string(FileAccess.get_file_as_string(SAVE_PATH))
	if not (v is Dictionary):
		return false
	p = v["p"]
	levels = v["levels"]
	depth = int(v["depth"])
	crystal_levels = (v["crystal_levels"] as Array).map(func(x): return int(x))
	p["crystals"] = (p.get("crystals", []) as Array).map(func(x): return int(x))
	if p.has("spell_counts"):
		p["spell_counts"] = (p["spell_counts"] as Array).map(func(x): return int(x))
	for kk in ["known", "aliases"]:
		if p.has(kk):
			for key in (p[kk] as Dictionary).keys():
				p[kk][key] = (p[kk][key] as Array).map(func(x): return int(x))
	if not p.has("aliases") or not p.has("known"):
		_init_aliases()          # saves from before aliases existed
	var saved_opts: Dictionary = v.get("options", {})
	for k in saved_opts.keys():
		options[k] = saved_opts[k]
	won = false
	rng.randomize()
	emit_signal("stats_changed")
	return true
