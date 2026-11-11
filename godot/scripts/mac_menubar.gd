class_name MacMenuBar
extends Control
## The Macintosh menu bar, built from the game's MENU resources.
## Menus are drawn directly (no PopupMenu windows), so they open instantly on mouse-down.
## As on the Mac: press a title to open its menu, slide across titles to switch menus,
## and release over an item (or click it) to choose it.

signal action(menu: String, index: int)

var menus: Array = []      # {title, items:[{text,key,id,disabled,checked,sep}], x, w, enabled}
var app_icon: Texture2D
var _open := -1
var _hover := -1
var _clock_t := 0.0
var _catcher: Control      # full-screen layer while a menu is open
var _drop: Control         # the open menu's item list
var _pressed_at := 0

const ITEM_H := 18.0

func _init() -> void:
	position = Vector2.ZERO
	size = Vector2(MacUI.SCREEN.x, MacUI.MENU_H)
	mouse_filter = Control.MOUSE_FILTER_STOP

func _ready() -> void:
	_catcher = Control.new()
	_catcher.top_level = true
	_catcher.position = Vector2.ZERO
	_catcher.size = MacUI.SCREEN
	_catcher.mouse_filter = Control.MOUSE_FILTER_STOP
	_catcher.visible = false
	_catcher.z_index = 100
	_catcher.gui_input.connect(_catcher_input)
	add_child(_catcher)
	_drop = Control.new()
	_drop.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_drop.draw.connect(_draw_drop)
	_catcher.add_child(_drop)

func add_menu(title: String, items: Array) -> void:
	menus.append({"title": title, "items": [], "x": 0.0, "w": 0.0, "enabled": true})
	set_items(title, items)
	_layout()

## items: Array of [text, key] pairs ("" key = none, "-" text = separator)
func set_items(title: String, items: Array) -> void:
	var m := _find(title)
	if m.is_empty():
		return
	var old: Array = m["items"]
	var out: Array = []
	for i in items.size():
		var it: Array = items[i]
		var prev := {}
		for o in old:
			if int(o["id"]) == i:
				prev = o
		out.append({"text": str(it[0]), "key": str(it[1]), "id": i, "sep": str(it[0]) == "-",
			"disabled": bool(prev.get("disabled", false)), "checked": bool(prev.get("checked", false))})
	m["items"] = out

func _item(title: String, id: int) -> Dictionary:
	var m := _find(title)
	if m.is_empty():
		return {}
	for it in m["items"]:
		if int(it["id"]) == id:
			return it
	return {}

func set_item_checked(title: String, id: int, on: bool) -> void:
	var it := _item(title, id)
	if not it.is_empty():
		it["checked"] = on

func set_item_disabled(title: String, id: int, off: bool) -> void:
	var it := _item(title, id)
	if not it.is_empty():
		it["disabled"] = off

func set_enabled(title: String, on: bool) -> void:
	var m := _find(title)
	if not m.is_empty():
		m["enabled"] = on
		queue_redraw()

## Show or hide a whole top-level menu (the menus after it close up).
func set_menu_visible(title: String, on: bool) -> void:
	var m := _find(title)
	if m.is_empty():
		return
	m["hidden"] = not on
	_layout()
	queue_redraw()

func _find(title: String) -> Dictionary:
	for m in menus:
		if m["title"] == title:
			return m
	return {}

func _layout() -> void:
	var font := get_theme_default_font()
	var x := 8.0
	for m in menus:
		if bool(m.get("hidden", false)):
			m["x"] = -10000.0          # hidden: not drawn, not clickable, takes no room
			m["w"] = 0.0
			continue
		var w: float = font.get_string_size(str(m["title"]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x + 16
		m["x"] = x
		m["w"] = w
		x += w

func _title_at(p: Vector2) -> int:
	if p.y < 0 or p.y >= MacUI.MENU_H:
		return -1
	for i in menus.size():
		var m: Dictionary = menus[i]
		if p.x >= float(m["x"]) and p.x < float(m["x"]) + float(m["w"]):
			return i
	return -1

func _drop_rect(i: int) -> Rect2:
	var m: Dictionary = menus[i]
	var font := get_theme_default_font()
	var w := 120.0
	for it in m["items"]:
		var tw: float = font.get_string_size(str(it["text"]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x + 60
		w = maxf(w, tw)
	var h := 4.0
	for it in m["items"]:
		h += 8.0 if it["sep"] else ITEM_H
	return Rect2(float(m["x"]), MacUI.MENU_H - 1, w, h)

func _open_menu(i: int) -> void:
	_open = i
	_hover = -1
	_catcher.visible = true
	var r := _drop_rect(i)
	_drop.position = r.position
	_drop.size = r.size
	_drop.queue_redraw()
	queue_redraw()

func _close() -> void:
	_open = -1
	_hover = -1
	_catcher.visible = false
	queue_redraw()

func _item_at(p: Vector2) -> int:
	if _open < 0:
		return -1
	var r := _drop_rect(_open)
	if not r.has_point(p):
		return -1
	var y := r.position.y + 2.0
	var items: Array = menus[_open]["items"]
	for k in items.size():
		var hh := 8.0 if items[k]["sep"] else ITEM_H
		if p.y >= y and p.y < y + hh:
			return -1 if (items[k]["sep"] or items[k]["disabled"]) else k
		y += hh
	return -1

func _gui_input(event: InputEvent) -> void:
	# after a press on a title, Godot sends the drag and the release to this control:
	# hand them to the menu logic (the bar sits at the screen origin, so positions match)
	if _open >= 0 and (event is InputEventMouseMotion or (event is InputEventMouseButton and not (event as InputEventMouseButton).pressed)):
		_catcher_input(event)
		return
	var mb := event as InputEventMouseButton
	if mb and mb.pressed and mb.button_index == MOUSE_BUTTON_LEFT:
		var i := _title_at(mb.position)
		if i >= 0 and menus[i]["enabled"]:
			_pressed_at = Time.get_ticks_msec()
			_open_menu(i)
			accept_event()

func _catcher_input(event: InputEvent) -> void:
	var mm := event as InputEventMouseMotion
	if mm:
		var t := _title_at(mm.position)
		if t >= 0 and t != _open and menus[t]["enabled"]:
			_open_menu(t)
		var h := _item_at(mm.position)
		if h != _hover:
			_hover = h
			_drop.queue_redraw()
		return
	var mb := event as InputEventMouseButton
	if mb == null or mb.button_index != MOUSE_BUTTON_LEFT:
		return
	if not mb.pressed:
		var k := _item_at(mb.position)
		if k >= 0:
			var m: Dictionary = menus[_open]
			var id := int(m["items"][k]["id"])
			var title: String = m["title"]
			_close()
			action.emit(title, id)
		elif _title_at(mb.position) < 0 or Time.get_ticks_msec() - _pressed_at > 400:
			# released away from the menu (after a drag): close; a quick click on a title keeps it open
			if _title_at(mb.position) < 0:
				_close()
	else:
		var t := _title_at(mb.position)
		if t >= 0:
			if t == _open:
				_close()                       # clicking the open menu's title closes it
			elif menus[t]["enabled"]:
				_pressed_at = Time.get_ticks_msec()
				_open_menu(t)
		elif not _drop_rect(_open).has_point(mb.position):
			_close()

func _draw_drop() -> void:
	if _open < 0:
		return
	var font := get_theme_default_font()
	var r := Rect2(Vector2.ZERO, _drop.size)
	_drop.draw_rect(Rect2(Vector2(1, 1), r.size), Color.BLACK)
	_drop.draw_rect(r, Color.WHITE)
	_drop.draw_rect(Rect2(Vector2(0.5, 0.5), r.size - Vector2(1, 1)), Color.BLACK, false, 1.0)
	var y := 2.0
	var items: Array = menus[_open]["items"]
	for k in items.size():
		var it: Dictionary = items[k]
		if it["sep"]:
			for x in range(2, int(r.size.x) - 2, 2):
				_drop.draw_rect(Rect2(x, y + 3, 1, 1), Color(0.5, 0.5, 0.5))
			y += 8.0
			continue
		var col := Color(0.6, 0.6, 0.6) if it["disabled"] else Color.BLACK
		if k == _hover:
			_drop.draw_rect(Rect2(1, y, r.size.x - 2, ITEM_H), Color.BLACK)
			col = Color.WHITE
		if it["checked"]:
			_draw_check(_drop, Vector2(5, y + 4), col)
		_drop.draw_string(font, Vector2(18, y + 13), str(it["text"]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, col)
		if str(it["key"]) != "":
			_draw_command(_drop, Vector2(r.size.x - 36, y + 4), col)
			_drop.draw_string(font, Vector2(r.size.x - 24, y + 13), str(it["key"]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, col)
		y += ITEM_H

## The menu's check mark and command-key symbol are drawn as shapes, not text: the fonts in exported
## (especially web) builds have no glyph for them and showed a stand-in character instead.
func _draw_check(ci: CanvasItem, o: Vector2, col: Color) -> void:
	ci.draw_polyline(PackedVector2Array([o + Vector2(0, 5), o + Vector2(3, 8), o + Vector2(9, 1)]), col, 1.5)

func _draw_command(ci: CanvasItem, o: Vector2, col: Color) -> void:
	# the "looped square" (place of interest) sign, about 10 x 10: a square with a loop at each corner
	var a := o + Vector2(3, 3)
	var b := o + Vector2(7, 3)
	var c := o + Vector2(7, 7)
	var d := o + Vector2(3, 7)
	ci.draw_line(Vector2(a.x, a.y - 1), Vector2(a.x, d.y + 1), col, 1.0)
	ci.draw_line(Vector2(b.x, b.y - 1), Vector2(b.x, c.y + 1), col, 1.0)
	ci.draw_line(Vector2(a.x - 1, a.y), Vector2(b.x + 1, b.y), col, 1.0)
	ci.draw_line(Vector2(d.x - 1, d.y), Vector2(c.x + 1, c.y), col, 1.0)
	for corner in [[a, Vector2(-1.5, -1.5)], [b, Vector2(1.5, -1.5)], [c, Vector2(1.5, 1.5)], [d, Vector2(-1.5, 1.5)]]:
		ci.draw_arc((corner[0] as Vector2) + (corner[1] as Vector2), 1.6, 0.0, TAU, 12, col, 1.0)

func _process(delta: float) -> void:
	_clock_t += delta
	if _clock_t > 20.0:
		_clock_t = 0.0
		queue_redraw()

func _draw() -> void:
	var font := get_theme_default_font()
	draw_rect(Rect2(Vector2.ZERO, size), Color.WHITE)
	draw_line(Vector2(0, size.y - 0.5), Vector2(size.x, size.y - 0.5), Color.BLACK)
	pass                    # (no icon at the left: the bar starts with Command)
	for i in menus.size():
		var m: Dictionary = menus[i]
		var r := Rect2(float(m["x"]), 0, float(m["w"]), size.y - 1)
		var col := Color.BLACK if m["enabled"] else Color(0.6, 0.6, 0.6)
		if i == _open:
			draw_rect(r, Color.BLACK)
			col = Color.WHITE
		draw_string(font, Vector2(r.position.x + 8, 14), str(m["title"]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, col)
	var t := Time.get_time_dict_from_system()
	var h: int = int(t["hour"]) % 12
	if h == 0:
		h = 12
	var clock := "%d:%02d %s" % [h, int(t["minute"]), "PM" if int(t["hour"]) >= 12 else "AM"]
	var app := "Castle Knowledge"
	var aw: float = font.get_string_size(app, HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x
	draw_string(font, Vector2(size.x - aw - 8, 14), app, HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.BLACK)
	if app_icon:
		draw_texture_rect(app_icon, Rect2(size.x - aw - 28, 2, 16, 16), false)
	draw_line(Vector2(size.x - aw - 36, 0), Vector2(size.x - aw - 36, size.y - 1), Color.BLACK)
	var cw: float = font.get_string_size(clock, HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x
	draw_string(font, Vector2(size.x - aw - 48 - cw, 14), clock, HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.BLACK)
