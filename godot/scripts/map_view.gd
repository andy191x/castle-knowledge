class_name MapView
extends Control
## Overhead view. Each cell is 21x21 px as in the original (f2_0c6e / f2_43a8),
## and every map symbol is a glyph of the original "Monsters" bitmap font.

const CELL := 21
# Glyph codes in the Monsters font (FONT 3471)
const G_PLAYER_BASE := 124      # +direction (1..4), traced: 124 + g_7c44 in f2_4410
const G_TREE := 54
const G_TOWER := 55
const G_WELL := 101
const G_STAIRS_DOWN := 113
const G_STAIRS_UP := 114
const G_FOOD := 228
const G_ARMOR := 229
const G_SWORD := 230
const G_WAND := 231
const G_POTION := 232
const G_SCROLL := 233
const G_MAGIC_BOX := 235
const G_GOLD := 238
const G_STORE := 241
const G_HELM := 242
const G_AMULET := 243
const G_RING := 244
const G_WIZARD := 245
const G_CHEST := 246
const G_CRYSTAL := 249
const G_DOOR := 250
const G_SHIELD := 252
const G_FOUNTAIN := 253
const G_KEY := 254

var game: GameState
var font: GlyphFont
var scale_f := 1.5
var fit_size := Vector2.ZERO
var offset := Vector2.ZERO
var hatch_tex: Texture2D
var wall_tex: Texture2D
var floor_col := Color(0.96, 0.93, 0.84)
var unseen_col := Color(0.12, 0.10, 0.14)

func _init() -> void:
	font = GlyphFont.new("res://assets/fonts/FONT_art_3471")

func _ready() -> void:
	texture_repeat = CanvasItem.TEXTURE_REPEAT_ENABLED
	hatch_tex = Data.tex("ppat_art_161")     # the overhead view's green hatch
	refit()

func refit() -> void:
	if fit_size != Vector2.ZERO:
		# full-size cells; the view scrolls to keep the player in sight (see _update_scroll)
		scale_f = 1.0
		size = fit_size
	else:
		custom_minimum_size = Vector2(LevelGen.W, LevelGen.H) * CELL * scale_f
	queue_redraw()
	size = custom_minimum_size

## Glyph for a monster: monsters are in STR# order starting at glyph 129 (code 174 is unused in the font).
static func monster_glyph(idx: int) -> int:
	var g := 129 + idx
	if g >= 174:
		g += 1
	return mini(g, 227)

func _draw() -> void:
	if game == null or game.levels.is_empty():
		return
	var L: Dictionary = game.level()
	var cs := CELL * scale_f
	_update_scroll(cs)
	# the hatch covers the whole window, whatever its size
	var area := size
	var par := get_parent_area_size()
	area = Vector2(maxf(area.x, par.x), maxf(area.y, par.y))
	if hatch_tex:
		draw_texture_rect(hatch_tex, Rect2(Vector2.ZERO, area), true)
	if game != null and not game.p.is_empty() and game.p.get("amulet") != null and int(game.p["amulet"]["type"]) == 2:
		return          # amulet of darkness: the overhead view stays dark (f2_0c6e, f2_4410 ...)
	else:
		draw_rect(Rect2(Vector2.ZERO, size), Color(0.0, 0.45, 0.25))
	# explored floor is white; edges between floor and wall are black lines
	for y in LevelGen.H:
		for x in LevelGen.W:
			if not L["seen"][y][x]:
				continue
			var t := int(L["tiles"][y][x])
			if t == LevelGen.T.WALL:
				continue
			var r := Rect2(offset + Vector2(x, y) * cs, Vector2(cs, cs))
			draw_rect(r, Color.WHITE)
			for d in [Vector2i(0, -1), Vector2i(1, 0), Vector2i(0, 1), Vector2i(-1, 0)]:
				var nx: int = x + d.x
				var ny: int = y + d.y
				var ed: int = game.edge(Vector2i(x, y), Vector2i(nx, ny)) if (nx >= 0 and ny >= 0 and nx < LevelGen.W and ny < LevelGen.H) else LevelGen.E.WALL
				var is_wall: bool = ed == LevelGen.E.WALL      # doors (and the store door) show as gaps
				var unseen: bool = not is_wall and ed == LevelGen.E.OPEN and not L["seen"][ny][nx]
				if is_wall or unseen:
					var a := r.position
					var b := r.position
					if d.y == -1: b += Vector2(cs, 0)
					elif d.y == 1:
						a += Vector2(0, cs)
						b += Vector2(cs, cs)
					elif d.x == -1: b += Vector2(0, cs)
					else:
						a += Vector2(cs, 0)
						b += Vector2(cs, cs)
					# walls: thick black; the edge of unexplored space: thin grey
					if is_wall:
						draw_line(a, b, Color.BLACK, 2.0)
					else:
						draw_line(a, b, Color(0.45, 0.45, 0.45), 1.0)
			match t:
				LevelGen.T.STAIRS_DOWN: _alcove_feature(L, x, y, r, 1)
				LevelGen.T.STAIRS_UP: _alcove_feature(L, x, y, r, 2)
	# The original overhead view (f2_43a8 is only called by f2_4410 and f2_6ea6) shows the player
	# and room-wall features only: Subadd's store ("S", type 0) and stairs (types 1 and 2).
	# Doors, monsters and items are not drawn.
	for key in L["features"].keys():
		if int(L["features"][key]) != LevelGen.F.STORE:
			continue
		var xy: PackedStringArray = str(key).split(",")
		var sx := int(xy[0])
		var sy := int(xy[1])
		if L["seen"][sy][sx]:
			_alcove_feature(L, sx, sy, Rect2(offset + Vector2(sx, sy) * cs, Vector2(cs, cs)), 0)
	var px := int(game.p["x"])
	var py := int(game.p["y"])
	_glyph(G_PLAYER_BASE + int(game.p["dir"]), px, py, Color.BLACK)

## Room-wall features as in f2_6ea6: a line along a wall edge of the cell plus the Monsters-font
## glyph for that edge (north 110, west 108, east 109, south 107) + 4 x type
## (type 0 = Subadd's store "S", 1 and 2 = stairs).
func _wall_feature(L: Dictionary, x: int, y: int, r: Rect2, typ: int) -> void:
	var edges := [[Vector2i(0, -1), 110], [Vector2i(-1, 0), 108], [Vector2i(1, 0), 109], [Vector2i(0, 1), 107]]
	for e in edges:
		var d: Vector2i = e[0]
		var nx: int = x + d.x
		var ny: int = y + d.y
		if nx < 0 or ny < 0 or nx >= LevelGen.W or ny >= LevelGen.H:
			continue
		if int(L["tiles"][ny][nx]) != LevelGen.T.WALL:
			continue
		var a := r.position
		var b := r.position
		if d.y == -1: b += Vector2(r.size.x, 0)
		elif d.y == 1:
			a += Vector2(0, r.size.y)
			b += r.size
		elif d.x == -1: b += Vector2(0, r.size.y)
		else:
			a += Vector2(r.size.x, 0)
			b += r.size
		draw_line(a, b, Color.BLACK, 2.0)
		_glyph(int(e[1]) + 4 * typ, x, y, Color.BLACK)
		return
	_glyph(110 + 4 * typ, x, y, Color.BLACK)

## An alcove feature (store type 0, stairs 1 and 2): the line and glyph go on the alcove's back
## wall, the side opposite the room it opens from (glyph north 110, west 108, east 109, south 107).
## Store / stairs alcove glyph (Monsters font): each has W, E, S, N versions in that order —
## store 107-110, stairs down 111-114, stairs up 115-118 — and the one used is the direction
## you face when stepping from the room into the alcove.
func _alcove_feature(L: Dictionary, x: int, y: int, r: Rect2, typ: int) -> void:
	var own := int(L["room_of"][y][x])
	# d points from the alcove to its room; you step into the alcove facing the opposite way
	var dirs := [[Vector2i(1, 0), 0], [Vector2i(-1, 0), 1], [Vector2i(0, -1), 2], [Vector2i(0, 1), 3]]
	for e in dirs:
		var d: Vector2i = e[0]
		var nx: int = x + d.x
		var ny: int = y + d.y
		if nx < 0 or ny < 0 or nx >= LevelGen.W or ny >= LevelGen.H:
			continue
		var nb := int(L["room_of"][ny][nx])
		if nb < 0 or nb == own:
			continue
		_glyph(107 + 4 * typ + int(e[1]), x, y, Color.BLACK)
		return
	_glyph(107 + 4 * typ, x, y, Color.BLACK)

func _update_scroll(cs: float) -> void:
	# a half-tile border of the green hatch all round the map
	var margin := cs * 0.5
	var full := Vector2(LevelGen.W, LevelGen.H) * cs + Vector2(margin, margin) * 2.0
	var view := size if size != Vector2.ZERO else full
	var pc := (Vector2(int(game.p["x"]), int(game.p["y"])) + Vector2(0.5, 0.5)) * cs
	var o := (view / 2.0 - pc).floor()
	for i in 2:
		if full[i] <= view[i]:
			o[i] = floor((view[i] - full[i]) / 2.0)
		else:
			o[i] = clampf(o[i], view[i] - full[i], 0.0)
	offset = o + Vector2(margin, margin)

func _glyph(code: int, x: int, y: int, c: Color) -> void:
	var cs := CELL * scale_f
	font.draw(self, code, offset + Vector2(x * cs, y * cs), c, scale_f)

static func item_glyph(kind: String) -> int:
	match kind:
		"gold": return G_GOLD
		"food": return G_FOOD
		"potion": return G_POTION
		"scroll": return G_SCROLL
		"wand": return G_WAND
		"ring": return G_RING
		"helm": return G_HELM
		"amulet": return G_AMULET
		"armor": return G_ARMOR
		"sword": return G_SWORD
		"shield": return G_SHIELD
	return G_KEY

func _feature_glyph(f: int) -> int:
	match f:
		LevelGen.F.CHEST: return G_CHEST
		LevelGen.F.FOUNTAIN: return G_FOUNTAIN
		LevelGen.F.WELL: return G_WELL
		LevelGen.F.TREE: return G_TREE
		LevelGen.F.WIZARD: return G_WIZARD
		LevelGen.F.STORE, LevelGen.F.VENDING: return G_STORE
		LevelGen.F.MAGIC_BOX: return G_MAGIC_BOX
		LevelGen.F.CRYSTAL: return G_CRYSTAL
		LevelGen.F.TOWER: return G_TOWER
	return G_KEY

func _feature_color(f: int) -> Color:
	match f:
		LevelGen.F.CRYSTAL: return Color(0.6, 0.0, 0.7)
		LevelGen.F.TOWER: return Color(0.3, 0.2, 0.5)
		LevelGen.F.TREE: return Color(0.0, 0.45, 0.1)
		LevelGen.F.FOUNTAIN, LevelGen.F.WELL: return Color(0.0, 0.3, 0.7)
		LevelGen.F.STORE: return Color(0.7, 0.4, 0.0)
	return Color(0.35, 0.2, 0.05)
