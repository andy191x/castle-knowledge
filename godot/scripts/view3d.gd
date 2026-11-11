class_name View3D
extends Control
## "3D VIEW - <direction>" window contents, ported from f2_589c.
## Geometry is the original's (200 x 240 window), traced from f2_3ec4 / f2_409c:
##   depth boundaries (left x / top y / bottom y), mirrored at x' = 200 - x
##     B0 = 5 / 3 / 235   (edge of the player's own cell)
##     B1 = 50 / 41 / 166
##     B2 = 73 / 61 / 132
##     B3 = 84 / 71 / 115
##   side-wall segments for cells 0..3 (f2_409c): x 0-2, 8-47, 53-71, 75-82
## Patterns (f7_19ea / f7_1a2e slots): wall = ppat 140 + level, ceiling = ppat 137,
## floor = ppat 138, far wall (3 cells) = ppat 130, door = ppat 128, locked door = ppat 131.

signal run_pressed
signal monster_clicked
signal nav(kind: String)   # "forward", "left", "right", "back"
signal item_clicked

const BX := [5.0, 50.0, 73.0, 84.0]
const BT := [3.0, 41.0, 61.0, 71.0]
const BB := [235.0, 166.0, 132.0, 115.0]
# f2_409c side segments: [outer x, outer top, inner x, inner top, inner bottom, outer bottom]
const SEG := [
	[0.0, 5.0, 2.0, 7.0, 238.0, 240.0],
	[8.0, 11.0, 47.0, 43.0, 171.0, 230.0],
	[53.0, 49.0, 71.0, 63.0, 134.0, 162.0],
	[75.0, 67.0, 82.0, 73.0, 118.0, 128.0],
]
const MONSTER_SIZE := [110.0, 84.0, 46.0, 26.0]
## Points of interest that never open by themselves: you click them (ahead of you, or under your feet).
const CLICK_FEATURES := [LevelGen.F.CHEST, LevelGen.F.MAGIC_BOX, LevelGen.F.FOUNTAIN, LevelGen.F.TREE,
	LevelGen.F.VENDING, LevelGen.F.WELL, LevelGen.F.WIZARD, LevelGen.F.CRYSTAL]
const FLOOR_PAT := 136     # the cyan floor seen in the playthrough
const STAIRS_SIDE_PAT := 162   # stairs seen side-on look like an open door, in blue (playthrough 15:30)

var game: GameState
var run_btn: TextureButton
var _tex: Dictionary = {}
var _monster_rect := Rect2()
var _cursor_id := -1
const BASE := Vector2(200, 240)
# CURS resources: 302 forward, 301 turn left, 300 turn right, 303 turn around (help page)
const NAV_CURSORS := {"forward": 302, "left": 300, "right": 301, "back": 303}
const SWORD_CURSOR := 305      # CURS 305, set over the monster (f3_2458: PtInRect -> SetCursor)
var effect: Texture2D = null   # hit / spell effect frame (cicn 20000-20006), drawn over the monster
var tomb: Texture2D = null     # "KILLED IN BATTLE" (cicn 2002) shown where the monster stood
var door_t := 0.0              # 0..1 while the door ahead slides open (as in the playthrough)
var _item_rect := Rect2()
var visible_monsters: Array = []
var effect_offset := Vector2.ZERO
var attack_zoom := 0.0
var hit_flash: Texture2D = null
var dither := false                # a monster's blow landed: a short checkerboard dither over the view
var _dither_tex: Texture2D = null     # a frame of PICT 300-327 over the monster when your blow lands               # f3_2df2: InsetRect(-16, -16) while a monster attacks   # sword travels across the monster (f3_6232)
var item_key := ""
var item_index := 0
var item_hits: Array = []
var box_hits: Array = []
var _late_monsters: Array = []      # monsters one space away, drawn after the floor items
var fruit_hits: Array = []         # [rect, "maturity" / "magic", cell key] for the tree's fruit
var tele_fx: ColorRect = null           # [rect, button 1..6, cell key] for a magic box ahead / underfoot          # [rect, cell key, index in that cell] for each visible floor item
var suspended := false              # a dialog is open: no direction cursors                 # floor item under the hand cursor (ahead or underfoot)   # monsters drawn this frame (for "You have just met ...")
const HAND_CURSOR := 304       # CURS 304: over things you can pick up

const TELE_SHADER := """
shader_type canvas_item;
uniform sampler2D screen_tex : hint_screen_texture, filter_nearest;
uniform int steps = 0;
uniform vec2 rect_size = vec2(200.0, 240.0);
uniform float step_px = 10.0;
uniform float pen_px = 4.0;
void fragment() {
	vec2 p = UV * rect_size;
	vec2 c = rect_size * 0.5;
	int inside = 0;
	bool ring = false;
	for (int i = 0; i < 10; i++) {
		if (i >= steps) { break; }
		vec2 h = c - vec2(float(i) * step_px);
		if (h.x <= 1.0 || h.y <= 1.0) { break; }
		vec2 d = (p - c) / h;
		float r = dot(d, d);
		if (r <= 1.0) {
			inside += 1;
			vec2 hi = h - vec2(pen_px);
			vec2 di = (p - c) / max(hi, vec2(1.0));
			if (dot(di, di) > 1.0) { ring = true; }
		}
	}
	vec4 col = texture(screen_tex, SCREEN_UV);
	if (inside % 2 == 1) { col.rgb = vec3(1.0) - col.rgb; }
	if (ring) { col.rgb = vec3(0.0); }
	COLOR = col;
}
"""

## The teleport animation: ten ovals shrinking 10 px a side, each framed with a 4-px pen and inverted.
func set_teleport_steps(n: int) -> void:
	if tele_fx == null:
		tele_fx = ColorRect.new()
		tele_fx.mouse_filter = Control.MOUSE_FILTER_IGNORE
		var sh := Shader.new()
		sh.code = TELE_SHADER
		var mat := ShaderMaterial.new()
		mat.shader = sh
		tele_fx.material = mat
		add_child(tele_fx)
	tele_fx.position = Vector2.ZERO
	tele_fx.size = size
	var k: float = size.x / 200.0
	var mat2 := tele_fx.material as ShaderMaterial
	mat2.set_shader_parameter("steps", n)
	mat2.set_shader_parameter("rect_size", size)
	mat2.set_shader_parameter("step_px", 10.0 * k)
	mat2.set_shader_parameter("pen_px", 4.0 * k)
	tele_fx.visible = n > 0

func _ready() -> void:
	texture_repeat = CanvasItem.TEXTURE_REPEAT_ENABLED
	clip_contents = true
	run_btn = TextureButton.new()
	run_btn.texture_normal = Data.tex("art_144")
	run_btn.texture_pressed = Data.tex("art_145")
	run_btn.position = Vector2(size.x - 60, size.y - 28)
	resized.connect(_on_resized)
	mouse_exited.connect(func(): _set_cursor(-1))
	run_btn.visible = false
	run_btn.pressed.connect(func(): run_pressed.emit())
	add_child(run_btn)
	mouse_filter = Control.MOUSE_FILTER_STOP

func _on_resized() -> void:
	if run_btn:
		run_btn.position = size - Vector2(60, 28)
	queue_redraw()

func _scale() -> Vector2:
	return size / BASE

## Which navigation hotspot a point (in local, scaled coordinates) is over.
func hotspot(p: Vector2) -> String:
	var b := p / _scale()
	if b.x < BASE.x / 3.0:
		return "left"
	if b.x > BASE.x * 2.0 / 3.0:
		return "right"
	return "forward"

func _set_cursor(id: int) -> void:
	if id == _cursor_id:
		return
	_cursor_id = id
	if id < 0:
		Input.set_custom_mouse_cursor(null)
		return
	var tex := Data.tex("CURS_app_%d" % id)
	if tex == null:
		tex = load("res://assets/cursors/CURS_app_%d.png" % id)
	if tex == null:
		return
	var curs: Dictionary = Data._load_json("res://assets/data/app_resources.json").get("CURS", {}).get(str(id), {})
	var hs: Array = curs.get("hotspot", [8, 8])
	var k := maxf(1.0, round(get_viewport().get_screen_transform().get_scale().x * 0.6))
	var img := tex.get_image()
	img.resize(int(16 * k), int(16 * k), Image.INTERPOLATE_NEAREST)
	Input.set_custom_mouse_cursor(ImageTexture.create_from_image(img), Input.CURSOR_ARROW, Vector2(float(hs[0]), float(hs[1])) * k)

## A door (or the store / stairs panel) in the side wall of cell k: drawn on that wall segment.
func _side_door(k: int, side: int, seg: PackedVector2Array, x0: float, x1: float) -> void:
	var e: int = game.edge(_cell(k, 0), _cell(k, side))
	if e != LevelGen.E.DOOR and e != LevelGen.E.LOCKED and e != LevelGen.E.STORE and e != LevelGen.E.STAIRS and e != LevelGen.E.TOWER:
		return
	# inset the door within the wall segment: middle 60 % of its width, from 15 % height to the floor
	var p0: Vector2 = seg[0].lerp(seg[1], 0.2)
	var p1: Vector2 = seg[0].lerp(seg[1], 0.8)
	var q0: Vector2 = seg[3].lerp(seg[2], 0.2)
	var q1: Vector2 = seg[3].lerp(seg[2], 0.8)
	var top0 := p0.lerp(q0, 0.15)
	var top1 := p1.lerp(q1, 0.15)
	var quad := PackedVector2Array([top0, top1, q1, q0])
	var pat := 131 if e == LevelGen.E.LOCKED else (STAIRS_SIDE_PAT if (e == LevelGen.E.STAIRS or e == LevelGen.E.STORE or e == LevelGen.E.TOWER) else 128)
	_poly(quad, _pat(pat), true)

## A door sits inside its wall with a border of wall round it: a strip at each side and across the top
## (as in the playthrough); it reaches down to the floor.
func _door_inset(r: Rect2) -> Rect2:
	return Rect2(r.position.x + r.size.x * 0.06, r.position.y + r.size.y * 0.02, r.size.x * 0.88, r.size.y * 0.98)

func _stairs_face(r: Rect2, c: Vector2i) -> void:
	# the next level is UP the castle: its staircase uses the up picture (PICT 2000)
	var up: bool = game.tile(c.x, c.y) == LevelGen.T.STAIRS_DOWN
	var pic := Data.tex("art_2000" if up else "art_2001")
	if pic:
		draw_texture_rect(pic, r, false)
		draw_rect(Rect2(r.position + Vector2(1, 1), r.size - Vector2(2, 2)), Color.BLACK, false, 2.0)
	else:
		_rect(r, _pat(STAIRS_SIDE_PAT))

## The floor: a lighter blue pattern, as in the playthrough (assets/patterns/floor_light_blue.png).
func _floor_tex() -> Texture2D:
	var t := Data.tex("floor_light_blue")
	return t if t else _pat(FLOOR_PAT)

func _crystal_icon(c: Vector2i) -> Texture2D:
	var ci := int(game.level().get("crystal", 0))
	return Data.tex("cicn_art_%d" % (9000 + clampi(ci, 0, 3)))

func _pat(id: int) -> Texture2D:
	if not _tex.has(id):
		_tex[id] = Data.tex("ppat_art_%d" % id)
	return _tex[id]

func _poly(pts: PackedVector2Array, tex: Texture2D, outline: bool = true) -> void:
	if tex == null:
		draw_colored_polygon(pts, Color(0.8, 0.8, 0.8))
	else:
		var uvs := PackedVector2Array()
		var ts := tex.get_size()
		for p in pts:
			uvs.append(p / ts)
		draw_polygon(pts, PackedColorArray([Color.WHITE]), uvs, tex)
	if outline:
		var closed := pts.duplicate()
		closed.append(pts[0])
		draw_polyline(closed, Color.BLACK, 1.0)

func _rect(r: Rect2, tex: Texture2D, pen: float = 2.0) -> void:
	_poly(PackedVector2Array([r.position, Vector2(r.end.x, r.position.y), r.end, Vector2(r.position.x, r.end.y)]), tex, false)
	draw_rect(Rect2(r.position + Vector2(pen / 2, pen / 2), r.size - Vector2(pen, pen)), Color.BLACK, false, pen)

static func _mirror(pts: PackedVector2Array) -> PackedVector2Array:
	var out := PackedVector2Array()
	for p in pts:
		out.append(Vector2(200.0 - p.x, p.y))
	return out

func _cell(k: int, lateral: int) -> Vector2i:
	## cell k ahead of the player, shifted lateral (-1 left, +1 right)
	var dir := int(game.p["dir"])
	var fwd: Vector2i = GameState.DIRS[dir]
	var right: Vector2i = GameState.DIRS[dir % 4 + 1]
	return Vector2i(int(game.p["x"]), int(game.p["y"])) + fwd * k + right * lateral

## Can you see straight from cell a into neighbouring cell b?  (walls are lines between cells)
func _open(a: Vector2i, b: Vector2i) -> bool:
	return game.open_between(a, b)


func _draw() -> void:
	draw_rect(Rect2(Vector2.ZERO, size), Color.WHITE)
	draw_set_transform(Vector2.ZERO, 0.0, _scale())
	_monster_rect = Rect2()
	_item_rect = Rect2()
	item_key = ""
	item_hits = []
	_late_monsters = []
	box_hits = []
	fruit_hits = []
	visible_monsters = []
	if game == null or game.levels.is_empty():
		run_btn.visible = false
		draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
		return
	var wall := _pat(140 + clampi(game.depth, 1, 20))
	var in_combat: bool = not game.engaged_monster().is_empty()   # items can't be taken mid-fight
	# distance to the first blocking cell ahead
	var D := 0
	while D < 4 and _open(_cell(D, 0), _cell(D + 1, 0)):
		D += 1
	var idx := mini(D, 3)
	var lx: float = BX[idx]
	var rx: float = 200.0 - lx
	var top: float = BT[idx]
	var bot: float = BB[idx]
	var fw: float = rx - lx + 1.0         # width of one cell at the front-wall depth
	# Rooms (f2_589c): the side walls are shifted outward by (open cells to that side) x
	# (front-wall width), so a wide room shows its walls further out.
	var open_l := 0
	var open_r := 0
	while open_l < 3 and _open(_cell(1, -open_l), _cell(1, -(open_l + 1))) and _open(_cell(0, -open_l), _cell(0, -(open_l + 1))):
		open_l += 1
	while open_r < 3 and _open(_cell(1, open_r), _cell(1, open_r + 1)) and _open(_cell(0, open_r), _cell(0, open_r + 1)):
		open_r += 1
	var shift_l := open_l * fw
	var shift_r := open_r * fw
	# ceiling and floor
	_poly(PackedVector2Array([Vector2(-400, 0), Vector2(lx - shift_l, top), Vector2(rx + 1 + shift_r, top), Vector2(600, 0)]), _pat(137), false)
	_poly(PackedVector2Array([Vector2(-400, 240), Vector2(lx - shift_l, bot), Vector2(rx + 1 + shift_r, bot), Vector2(600, 240)]), _floor_tex(), false)
	# side walls: the original full polygons (f2_3ec4), offset in rooms, patterned and 2-px framed
	var left_full := PackedVector2Array([Vector2(0, 0), Vector2(lx, top), Vector2(lx, bot), Vector2(0, 240)])
	var lpoly := PackedVector2Array()
	for p in left_full:
		lpoly.append(p - Vector2(shift_l, 0))
	var rpoly := PackedVector2Array()
	for p in _mirror(left_full):
		rpoly.append(p + Vector2(shift_r, 0))
	_poly(lpoly, wall, false)
	_poly(rpoly, wall, false)
	# corridor side openings (f2_5f80 / f2_6166), only where we are not in a room
	for k in range(idx, -1, -1):
		var x0: float = 0.0 if k == 0 else BX[k - 1]
		var x1: float = BX[k]
		var y0t: float = 0.0 if k == 0 else BT[k - 1]
		var y0b: float = 240.0 if k == 0 else BB[k - 1]
		for side in [-1, 1]:
			if (side == -1 and open_l > 0) or (side == 1 and open_r > 0):
				continue
			if not _open(_cell(k, 0), _cell(k, side)):
				continue
			var ceil_q := PackedVector2Array([Vector2(x0, y0t), Vector2(x1, BT[k]), Vector2(x0, BT[k])])
			var floor_q := PackedVector2Array([Vector2(x0, y0b), Vector2(x1, BB[k]), Vector2(x0, BB[k])])
			if side == 1:
				ceil_q = _mirror(ceil_q)
				floor_q = _mirror(floor_q)
			_poly(ceil_q, _pat(137), false)
			_poly(floor_q, _floor_tex(), false)
			var face := Rect2(x0, BT[k], x1 - x0, BB[k] - BT[k])
			if side == 1:
				face.position.x = 200.0 - x1
			_rect(face, wall, 2.0)
	# outlines (f2_589c frames the walls with a 2-px pen): only around wall that is really
	# there, so openings are not crossed by the outline of the wall they replace
	for side in [-1, 1]:
		if (side == -1 and open_l > 0) or (side == 1 and open_r > 0):
			continue
		var was_wall := false
		for k in range(0, idx + 1):
			var x0: float = 0.0 if k == 0 else BX[k - 1]
			var x1: float = BX[k]
			var y0t: float = 0.0 if k == 0 else BT[k - 1]
			var y0b: float = 240.0 if k == 0 else BB[k - 1]
			var wall_here: bool = not _open(_cell(k, 0), _cell(k, side))
			var seg := PackedVector2Array([Vector2(x0, y0t), Vector2(x1, BT[k]), Vector2(x1, BB[k]), Vector2(x0, y0b)])
			if side == 1:
				seg = _mirror(seg)
			if wall_here:
				# a solid run of wall reads as one surface: top and bottom edges only
				draw_line(seg[0], seg[1], Color.BLACK, 2.0)
				draw_line(seg[2], seg[3], Color.BLACK, 2.0)
			if wall_here != was_wall and k > 0:
				draw_line(seg[0], seg[3], Color.BLACK, 2.0)      # where a wall starts or stops
			was_wall = wall_here
			# a door in this side wall
			_side_door(k, side, seg, x0, x1)
		if was_wall:
			var last := PackedVector2Array([Vector2(BX[idx], BT[idx]), Vector2(BX[idx], BB[idx])])
			if side == 1:
				last = _mirror(last)
			draw_line(last[0], last[1], Color.BLACK, 2.0)
	if open_l > 0:
		draw_polyline(PackedVector2Array([lpoly[0], lpoly[1], lpoly[2], lpoly[3]]), Color.BLACK, 2.0)
	if open_r > 0:
		draw_polyline(PackedVector2Array([rpoly[0], rpoly[1], rpoly[2], rpoly[3]]), Color.BLACK, 2.0)
	# the front wall (or door) at depth D, spanning the room's width
	var front_cell := _cell(D + 1, 0)
	var ft := game.tile(front_cell.x, front_cell.y)
	var fr := Rect2(lx - shift_l, top, fw + shift_l + shift_r, bot - top)
	var door_r := Rect2(lx, top, fw, bot - top)
	if D > 3:
		draw_rect(fr, Color(0.25, 0.25, 0.25))
		draw_rect(fr, Color.BLACK, false, 1.0)
	else:
		_rect(fr, _pat(130) if D == 3 else wall)
		var fe: int = game.edge(_cell(D, 0), front_cell) if D < 4 else LevelGen.E.WALL
		var door_ahead: bool = fe == LevelGen.E.DOOR
		if fe == LevelGen.E.STORE:
			# Subadd's store door is in the wall (PICT 1999)
			var sd := Data.tex("art_1999")
			if sd:
				draw_texture_rect(sd, door_r, false)
		elif fe == LevelGen.E.LOCKED:
			_rect(_door_inset(door_r), _pat(131))
		elif fe == LevelGen.E.STAIRS or fe == LevelGen.E.TOWER:
			_stairs_face(door_r, front_cell)
		elif door_ahead:
			# the door, framed by a margin of wall; while it opens it slides aside to show the passage behind
			var dr := _door_inset(door_r)
			_rect(dr, _pat(133), 1.0)
			var open_w := dr.size.x * (1.0 - door_t)
			if open_w > 1.0:
				_rect(Rect2(dr.position.x + dr.size.x - open_w, dr.position.y, open_w, dr.size.y), _pat(128))
	# doors in the front wall beside the straight line of sight (rooms): same depth, offset by lateral cells
	if D <= 3:
		for lat in range(-open_l, open_r + 1):
			if lat == 0:
				continue
			var a_c := _cell(D, lat)
			var b_c := _cell(D + 1, lat)
			var le: int = game.edge(a_c, b_c)
			var lr := Rect2(lx + lat * fw, top, fw, bot - top)
			if le == LevelGen.E.STAIRS or le == LevelGen.E.TOWER:
				_stairs_face(lr, b_c)
			elif le == LevelGen.E.DOOR:
				_rect(_door_inset(lr), _pat(128))
			elif le == LevelGen.E.LOCKED:
				_rect(_door_inset(lr), _pat(131))
			elif le == LevelGen.E.STORE:
				var sd2 := Data.tex("art_1999")
				if sd2:
					draw_texture_rect(sd2, lr, false)
	# stairs, features, items and monsters standing in the visible cells (nearest drawn last)
	var mon_ahead := {}
	for k in range(mini(D, 3), 0, -1):
		var c := _cell(k, 0)
		var sz: float = MONSTER_SIZE[k]
		var floor_y: float = lerpf(BB[k - 1], BB[k], 0.2) - 4.0
		var cell_face := Rect2(BX[k], BT[k], 200.0 - 2.0 * BX[k], BB[k] - BT[k])
		var t := game.tile(c.x, c.y)
		var f := game.feature_at(c.x, c.y)
		if f == LevelGen.F.CRYSTAL:
			var cic := _crystal_icon(c)
			if cic:
				var cfs := sz * 0.6
				var cr := Rect2(100 - cfs / 2, floor_y - cfs, cfs, cfs)
				draw_texture_rect(cic, cr, false)
				if k == 1 and not in_combat:
					_item_rect = cr
					item_key = "crystal:%d,%d" % [c.x, c.y]
			f = LevelGen.F.NONE
		if f == LevelGen.F.STORE:
			# Subadd's store door on the back wall of its alcove (PICT 1999)
			var sd := Data.tex("art_1999")
			if sd:
				draw_texture_rect(sd, cell_face.grow(-cell_face.size.x * 0.08), false)
			f = LevelGen.F.NONE
		if f != LevelGen.F.NONE:
			var ic := Data.tex(_poi_icon(f, c))
			if ic:
				var fs := sz * 0.9
				var asp: float = ic.get_size().x / maxf(1.0, ic.get_size().y)
				var frect := Rect2(100 - fs * asp / 2, floor_y - fs, fs * asp, fs)
				draw_texture_rect(ic, frect, false)
				if f == LevelGen.F.TREE:
					_draw_fruit(frect, ic, "%d,%d" % [c.x, c.y], k == 1 and not in_combat)
				elif f == LevelGen.F.MAGIC_BOX and k == 1 and not in_combat:
					_add_box_buttons(frect, ic, "%d,%d" % [c.x, c.y])
				elif f in CLICK_FEATURES and f != LevelGen.F.TREE and k == 1 and not in_combat:
					_item_rect = frect
					item_key = "feature:%d,%d" % [c.x, c.y]
		# items and monsters in this row: straight ahead, and (in rooms) to either side
		var near_w: float = 200.0 - 2.0 * BX[k - 1]
		var far_w: float = 200.0 - 2.0 * BX[k]
		var cw: float = lerpf(near_w, far_w, 0.5)
		var lat_l := 0
		var lat_r := 0
		while lat_l < 3 and _open(_cell(k, -lat_l), _cell(k, -(lat_l + 1))):
			lat_l += 1
		while lat_r < 3 and _open(_cell(k, lat_r), _cell(k, lat_r + 1)):
			lat_r += 1
		for lat in range(-lat_l, lat_r + 1):
			var cc := _cell(k, lat)
			# perspective position at the cell's far edge; skip cells that fall outside the view
			var cx: float = 100.0 + lat * far_w
			if absf(cx - 100.0) > 100.0 + far_w * 0.3:
				continue
			if lat != 0:
				var lf := game.feature_at(cc.x, cc.y)
				if lf != LevelGen.F.NONE and lf != LevelGen.F.STORE:
					var lic: Texture2D = _crystal_icon(cc) if lf == LevelGen.F.CRYSTAL else Data.tex(_feature_icon(lf))
					if lic:
						var lfs := sz * 0.9
						var lasp: float = lic.get_size().x / maxf(1.0, lic.get_size().y)
						draw_texture_rect(lic, Rect2(cx - lfs * lasp / 2, floor_y - lfs, lfs * lasp, lfs), false)
			var key := "%d,%d" % [cc.x, cc.y]
			var here_items: Array = game.items_at(key)
			var s2 := sz * 0.45
			# items lie left to right, centred; the row ahead keeps clear of the row under your feet
			var row_bottom: float = floor_y
			if k == 1 and not game.items_at("%d,%d" % [_cell(0, 0).x, _cell(0, 0).y]).is_empty():
				row_bottom = minf(floor_y, 192.0)
			var gap: float = s2 + 4.0
			for j in here_items.size():
				var it: Dictionary = here_items[j]
				var ii := Data.tex(_item_icon(it))
				if ii == null:
					continue
				var ox: float = (float(j) - float(here_items.size() - 1) / 2.0) * gap
				if not game.monster_at(cc.x, cc.y).is_empty():
					ox += sz * 0.55
				var ir := Rect2(cx + ox - s2 / 2, row_bottom - s2, s2, s2)
				draw_texture_rect(ii, ir, false)
				if k == 1 and lat == 0 and not in_combat:
					item_hits.append([ir, key, j])
			var m := game.monster_at(cc.x, cc.y)
			if not m.is_empty():
				var md: Dictionary = Data.monsters()[int(m["idx"])]
				var icon := Data.monster_icon(int(md["id"]))
				visible_monsters.append(m)
				if icon:
					var r := Rect2(cx - sz / 2, floor_y - sz, sz, sz)
					var ahead: bool = k == 1 and lat == 0
					# while it attacks, the monster ahead is drawn enlarged instead (f3_2df2); monsters one
					# space away are drawn last, in front of the floor items
					var mr: Rect2 = r.grow(attack_zoom) if ahead and attack_zoom > 0.0 else r
					if k == 1:
						_late_monsters.append([icon, mr])
					else:
						draw_texture_rect(icon, mr, false)
					if ahead:
						mon_ahead = m
						_monster_rect = r
	# an item under your feet lies at the bottom of the view
	var here := _cell(0, 0)
	var hf := game.feature_at(here.x, here.y)
	if hf != LevelGen.F.NONE and hf != LevelGen.F.STORE and hf != LevelGen.F.TOWER:
		var vt: Texture2D = _crystal_icon(here) if hf == LevelGen.F.CRYSTAL else Data.tex(_poi_icon(hf, here))
		if vt:
			# drawn at its own proportions, standing on the floor at the bottom of the view
			var vh := 120.0 if hf in [LevelGen.F.WIZARD, LevelGen.F.MAGIC_BOX, LevelGen.F.TREE, LevelGen.F.WELL] else (88.0 if hf == LevelGen.F.CRYSTAL else 72.0)
			var vw: float = vh * vt.get_size().x / maxf(1.0, vt.get_size().y)
			var vr := Rect2(100 - vw / 2.0, 236 - vh, vw, vh)
			draw_texture_rect(vt, vr, false)
			if hf == LevelGen.F.TREE:
				_draw_fruit(vr, vt, "%d,%d" % [here.x, here.y], not in_combat)
			elif hf == LevelGen.F.MAGIC_BOX:
				if not in_combat:
					_add_box_buttons(vr, vt, "%d,%d" % [here.x, here.y])
			elif not in_combat and item_key == "":
				_item_rect = vr
				item_key = "feature:%d,%d" % [here.x, here.y]
	var hkey := "%d,%d" % [here.x, here.y]
	var under: Array = game.items_at(hkey)
	for j in under.size():
		var hit: Dictionary = under[j]
		var hi := Data.tex(_item_icon(hit))
		if hi == null:
			continue
		var hx: float = 100.0 + (float(j) - float(under.size() - 1) / 2.0) * 48.0
		var hr := Rect2(hx - 22, 194, 44, 44)
		draw_texture_rect(hi, hr, false)
		if not in_combat:
			item_hits.append([hr, hkey, j])
	for lm in _late_monsters:
		draw_texture_rect(lm[0], lm[1], false)
	# a monster on your own space (you fight it there): drawn large, standing in front of you
	var hm := game.monster_here()
	if not hm.is_empty():
		var hmd: Dictionary = Data.monsters()[int(hm["idx"])]
		var hicon := Data.monster_icon(int(hmd["id"]))
		if hicon:
			var hsz: float = MONSTER_SIZE[0]
			var hr := Rect2(100 - hsz / 2.0, 238 - hsz, hsz, hsz)
			draw_texture_rect(hicon, hr.grow(attack_zoom) if attack_zoom > 0.0 else hr, false)
			mon_ahead = hm
			_monster_rect = hr
	run_btn.visible = not mon_ahead.is_empty()
	if tomb:
		var tr := Rect2(100 - MONSTER_SIZE[1] / 2.0, lerpf(BB[0], BB[1], 0.2) - 4.0 - MONSTER_SIZE[1], MONSTER_SIZE[1], MONSTER_SIZE[1])
		# the stone stands at the bottom centre of the view
		var ts: float = tr.size.x - 20.0
		draw_texture_rect(tomb, Rect2(100 - ts / 2.0, 238 - ts, ts, ts), false)
	if dither:
		if _dither_tex == null:
			var img := Image.create(2, 2, false, Image.FORMAT_RGBA8)
			img.fill(Color(0, 0, 0, 0))
			img.set_pixel(0, 0, Color.BLACK)
			img.set_pixel(1, 1, Color.BLACK)
			_dither_tex = ImageTexture.create_from_image(img)
		draw_texture_rect(_dither_tex, Rect2(Vector2.ZERO, BASE), true)
	if hit_flash and _monster_rect.size != Vector2.ZERO:
		var hs: Vector2 = hit_flash.get_size()
		var k: float = minf(1.0, minf(_monster_rect.size.x / maxf(1.0, hs.x), _monster_rect.size.y / maxf(1.0, hs.y)))
		draw_texture_rect(hit_flash, Rect2(_monster_rect.get_center() - hs * k / 2.0, hs * k), false)
	if effect and _monster_rect.size != Vector2.ZERO:
		if effect_offset != Vector2.ZERO or effect.get_size().x <= 40:
			var es := Vector2(48, 48)
			draw_texture_rect(effect, Rect2(_monster_rect.get_center() - es / 2 + effect_offset, es), false)
		else:
			draw_texture_rect(effect, _monster_rect.grow(8), false)
	draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)

func _gui_input(event: InputEvent) -> void:
	if suspended:
		_set_cursor(-1)
		return
	var mm := event as InputEventMouseMotion
	if mm:
		var bp := mm.position / _scale()
		if _monster_rect.has_point(bp):
			_set_cursor(SWORD_CURSOR)
		elif _item_rect.has_point(bp) or _hit_item(bp) >= 0 or _hit_box(bp) >= 0 or _hit_fruit(bp) >= 0:
			_set_cursor(HAND_CURSOR)
		else:
			_set_cursor(int(NAV_CURSORS[hotspot(mm.position)]))
	var mb := event as InputEventMouseButton
	if mb and mb.pressed and mb.button_index == MOUSE_BUTTON_LEFT:
		if _monster_rect.has_point(mb.position / _scale()):
			monster_clicked.emit()
		elif _hit_fruit(mb.position / _scale()) >= 0:
			var fh: Array = fruit_hits[_hit_fruit(mb.position / _scale())]
			item_key = "fruit:%s:%s" % [str(fh[2]), str(fh[1])]
			item_clicked.emit()
		elif _hit_box(mb.position / _scale()) >= 0:
			var bh: Array = box_hits[_hit_box(mb.position / _scale())]
			item_key = "box:%s:%d" % [str(bh[2]), int(bh[1])]
			item_clicked.emit()
		elif _hit_item(mb.position / _scale()) >= 0:
			var hi2: Array = item_hits[_hit_item(mb.position / _scale())]
			item_key = str(hi2[1])
			item_index = int(hi2[2])
			item_clicked.emit()
		elif _item_rect.has_point(mb.position / _scale()):
			item_index = 0
			item_clicked.emit()
		else:
			nav.emit(hotspot(mb.position))

## The six buttons on a magic box's face, as f5_153a lays them out on the picture: 30 x 30, starting at
## (23, 28), the second column 30 + 35 px to the right on Muldiv's box (30 + 27 on Divsub's), rows 41 px
## apart; numbered left to right, top to bottom.  Scaled to where the picture is drawn.
func _add_box_buttons(r: Rect2, tex: Texture2D, key: String) -> void:
	if tex == null:
		return
	var nat := tex.get_size()
	var art := int(game.level().get("boxes", {}).get(key, 1250))
	var gap := 35.0 if art == 1250 else 27.0
	var sx: float = r.size.x / maxf(1.0, nat.x)
	var sy: float = r.size.y / maxf(1.0, nat.y)
	for row in 3:
		for col in 2:
			var nr := Rect2(23.0 + col * (30.0 + gap), 28.0 + row * 41.0, 30.0, 30.0)
			var br := Rect2(r.position + Vector2(nr.position.x * sx, nr.position.y * sy), Vector2(nr.size.x * sx, nr.size.y * sy))
			box_hits.append([br, row * 2 + col + 1, key])

## The tree's two fruit, where f6_0912 puts them on the tree picture: the red fruit of maturity (PICT 1001)
## a quarter in from the left and a third down, the blue fruit of magic (PICT 1002) a third in from the
## right and a quarter down; 20 px across up close.
func _draw_fruit(r: Rect2, tree: Texture2D, key: String, clickable: bool) -> void:
	if tree == null:
		return
	var nat := tree.get_size()
	var sx: float = r.size.x / maxf(1.0, nat.x)
	var sy: float = r.size.y / maxf(1.0, nat.y)
	var fs: float = 20.0 * sx
	var spots := [["maturity", "art_1001", Vector2(nat.x / 4.0, nat.y / 3.0)], ["magic", "art_1002", Vector2(nat.x - nat.x / 3.0, nat.y / 4.0)]]
	for sp in spots:
		var ft := Data.tex(str(sp[1]))
		var at: Vector2 = sp[2]
		var fr := Rect2(r.position + Vector2(at.x * sx, at.y * sy), Vector2(fs, fs * 27.0 / 20.0))
		if ft:
			draw_texture_rect(ft, fr, false)
		if clickable:
			fruit_hits.append([fr, str(sp[0]), key])

func _hit_fruit(pt: Vector2) -> int:
	for i in range(fruit_hits.size() - 1, -1, -1):
		if ((fruit_hits[i] as Array)[0] as Rect2).has_point(pt):
			return i
	return -1

func _hit_box(pt: Vector2) -> int:
	for i in range(box_hits.size() - 1, -1, -1):
		if ((box_hits[i] as Array)[0] as Rect2).has_point(pt):
			return i
	return -1

## The floor item under a point (the one drawn last wins), or -1.
func _hit_item(pt: Vector2) -> int:
	for i in range(item_hits.size() - 1, -1, -1):
		var h: Array = item_hits[i]
		if (h[0] as Rect2).has_point(pt):
			return i
	return -1

func _poi_icon(f: int, c: Vector2i) -> String:
	if f == LevelGen.F.MAGIC_BOX:
		return "art_%d" % int(game.level().get("boxes", {}).get("%d,%d" % [c.x, c.y], 1250))
	return _feature_icon(f)

static func _feature_icon(f: int) -> String:
	match f:
		LevelGen.F.CHEST: return "cicn_art_1246"
		LevelGen.F.FOUNTAIN: return "art_1100"
		LevelGen.F.TREE: return "art_1000"
		LevelGen.F.STORE: return "art_1999"           # Subadd's store door (pre-rendered with the stairs)
		LevelGen.F.VENDING: return "cicn_art_1250"    # Vend-O-Matic
		LevelGen.F.MAGIC_BOX: return "art_1250"       # Muldiv's (Divsub's: see _poi_icon)
		LevelGen.F.WELL: return "art_1200"            # wishing well
		LevelGen.F.WIZARD: return "art_1300"          # the wizard
		LevelGen.F.CRYSTAL: return "cicn_art_9000"
		LevelGen.F.TOWER: return "art_139"
	return ""

## Sword, armor and shield pictures: each has plain, enhanced (blue outline, +50) and cursed (red
## outline, +70) versions - armor 500/550/570, swords 601/651/671, shields 701/751/771 + type.
static func equip_icon_id(kind: String, t: int, bonus: int) -> int:
	var base := 0
	match kind:
		"armor": base = 500 + clampi(t, 0, 4)
		"sword":
			if t >= 5:
				return 601 + clampi(t, 0, 6)      # bare hands / broken sword: one picture each
			base = 601 + t
		"shield": base = 701 + clampi(t, 0, 4)
	if bonus > 0:
		return base + 50
	if bonus < 0:
		return base + 70
	return base

## Floor sprite for an item: armor, swords and shields by their type (cicn 500-504, 601-607,
## 701-705, as in the stats window and the shops), everything else by kind.
static func _item_icon(it) -> String:
	var kind: String = str(it["kind"]) if it is Dictionary else str(it)
	var t: int = int(it.get("type", 0)) if it is Dictionary else 0
	match kind:
		"crystal": return "cicn_art_%d" % (9000 + clampi(t, 0, 3))
		"armor", "sword", "shield":
			var bn: int = int(it.get("bonus", 0)) if it is Dictionary else 0
			return "cicn_art_%d" % equip_icon_id(kind, t, bn)
		"food": return "cicn_art_1228"
		"gold": return "cicn_art_1238"
		"wand": return "cicn_art_1231"
		"potion": return "cicn_art_1232"
		"scroll": return "cicn_art_1233"
		"ring": return "cicn_art_1234"
		"amulet": return "cicn_art_1235"
		"helm": return "cicn_art_1236"
	return "cicn_art_1246"
