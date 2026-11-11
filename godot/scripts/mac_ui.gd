class_name MacUI
extends RefCounted
## System 7 look-and-feel helpers: theme, check/radio icons, dialog panels.
## The original runs on an 800x600 Mac screen; the project viewport matches that.

const SCREEN := Vector2(800, 600)
const DESKTOP := Color8(82, 128, 128)       # the teal desktop seen in the playthrough
const MENU_H := 20

static func make_theme() -> Theme:
	var th := Theme.new()
	th.default_font_size = 12
	var btn := _box(Color.WHITE, 1, 4)
	btn.content_margin_left = 10
	btn.content_margin_right = 10
	btn.content_margin_top = 0
	btn.content_margin_bottom = 0
	var btn_p := _box(Color.BLACK, 1, 4)
	var btn_d := _box(Color.WHITE, 1, 4)
	btn_d.border_color = Color(0.6, 0.6, 0.6)
	th.set_stylebox("normal", "Button", btn)
	th.set_stylebox("hover", "Button", btn)
	th.set_stylebox("pressed", "Button", btn_p)
	th.set_stylebox("hover_pressed", "Button", btn_p)
	th.set_stylebox("disabled", "Button", btn_d)
	th.set_stylebox("focus", "Button", StyleBoxEmpty.new())
	for c in ["font_color", "font_hover_color", "font_focus_color"]:
		th.set_color(c, "Button", Color.BLACK)
	th.set_color("font_pressed_color", "Button", Color.WHITE)
	th.set_color("font_hover_pressed_color", "Button", Color.WHITE)
	th.set_color("font_disabled_color", "Button", Color(0.6, 0.6, 0.6))
	th.set_color("font_color", "Label", Color.BLACK)
	th.set_font_size("font_size", "Button", 11)
	th.set_font_size("font_size", "CheckBox", 11)
	th.set_constant("h_separation", "CheckBox", 6)
	# check boxes and radio buttons
	var empty := StyleBoxEmpty.new()
	for t in ["CheckBox"]:
		for s in ["normal", "hover", "pressed", "hover_pressed", "focus", "disabled"]:
			th.set_stylebox(s, t, empty)
		for c in ["font_color", "font_hover_color", "font_pressed_color", "font_hover_pressed_color", "font_focus_color"]:
			th.set_color(c, t, Color.BLACK)
		th.set_icon("checked", t, _check_icon(true, false))
		th.set_icon("unchecked", t, _check_icon(false, false))
		th.set_icon("radio_checked", t, _check_icon(true, true))
		th.set_icon("radio_unchecked", t, _check_icon(false, true))
	# text fields
	var le := _box(Color.WHITE, 1, 0)
	le.content_margin_left = 4
	th.set_stylebox("normal", "LineEdit", le)
	th.set_stylebox("focus", "LineEdit", le)
	th.set_color("font_color", "LineEdit", Color.BLACK)
	th.set_color("caret_color", "LineEdit", Color.BLACK)
	th.set_color("selection_color", "LineEdit", Color(0.6, 0.6, 0.6))
	# lists
	th.set_stylebox("panel", "ItemList", _box(Color.WHITE, 1, 0))
	th.set_stylebox("focus", "ItemList", StyleBoxEmpty.new())
	th.set_stylebox("selected", "ItemList", _box(Color.BLACK, 0, 0))
	th.set_stylebox("selected_focus", "ItemList", _box(Color.BLACK, 0, 0))
	th.set_color("font_color", "ItemList", Color.BLACK)
	th.set_color("font_selected_color", "ItemList", Color.WHITE)
	th.set_color("font_hovered_color", "ItemList", Color.BLACK)
	# menus
	var pm := _box(Color.WHITE, 1, 0)
	pm.shadow_color = Color(0, 0, 0, 1)
	pm.shadow_size = 1
	pm.shadow_offset = Vector2(1, 1)
	pm.content_margin_top = 2
	pm.content_margin_bottom = 2
	th.set_stylebox("panel", "PopupMenu", pm)
	th.set_stylebox("hover", "PopupMenu", _box(Color.BLACK, 0, 0))
	th.set_color("font_color", "PopupMenu", Color.BLACK)
	th.set_color("font_hover_color", "PopupMenu", Color.WHITE)
	th.set_color("font_disabled_color", "PopupMenu", Color(0.6, 0.6, 0.6))
	th.set_color("font_accelerator_color", "PopupMenu", Color.BLACK)
	th.set_font_size("font_size", "PopupMenu", 12)
	# scroll bars (plain)
	th.set_stylebox("panel", "PanelContainer", _box(Color.WHITE, 0, 0))
	th.set_color("default_color", "RichTextLabel", Color.BLACK)
	var tip := _box(Color(1, 1, 0.88), 1, 0)
	tip.content_margin_left = 6
	tip.content_margin_right = 6
	tip.content_margin_top = 3
	tip.content_margin_bottom = 3
	th.set_stylebox("panel", "TooltipPanel", tip)
	th.set_color("font_color", "TooltipLabel", Color.BLACK)
	th.set_font_size("font_size", "TooltipLabel", 11)
	th.set_font_size("normal_font_size", "RichTextLabel", 11)
	# keyboard focus (Tab / Shift+Tab): a thin grey outline on buttons, check boxes and radio buttons
	var focus := StyleBoxFlat.new()
	focus.draw_center = false
	focus.border_color = Color(0.45, 0.45, 0.45)
	focus.set_border_width_all(1)
	focus.set_corner_radius_all(3)
	focus.expand_margin_left = 2
	focus.expand_margin_right = 2
	focus.expand_margin_top = 2
	focus.expand_margin_bottom = 2
	for cls in ["Button", "CheckBox", "CheckButton", "TextureButton"]:
		th.set_stylebox("focus", cls, focus)
	# a button you are pressing is also under the pointer: give that state the pressed look too
	for cls in ["Button", "CheckBox"]:
		if th.has_stylebox("pressed", cls):
			th.set_stylebox("hover_pressed", cls, th.get_stylebox("pressed", cls))
		if th.has_color("font_pressed_color", cls):
			th.set_color("font_hover_pressed_color", cls, th.get_color("font_pressed_color", cls))
	return th

static func _box(bg: Color, border: int, radius: int) -> StyleBoxFlat:
	var sb := StyleBoxFlat.new()
	sb.bg_color = bg
	sb.border_color = Color.BLACK
	sb.set_border_width_all(border)
	sb.set_corner_radius_all(radius)
	sb.anti_aliasing = false
	return sb

static func _check_icon(on: bool, radio: bool) -> ImageTexture:
	var n := 12
	var img := Image.create(n, n, false, Image.FORMAT_RGBA8)
	img.fill(Color(0, 0, 0, 0))
	var c := Vector2(5.5, 5.5)
	for y in n:
		for x in n:
			var p := Vector2(x, y)
			if radio:
				var d := p.distance_to(c)
				if d <= 5.6:
					img.set_pixel(x, y, Color.WHITE)
				if d > 4.6 and d <= 5.6:
					img.set_pixel(x, y, Color.BLACK)
				if on and d <= 2.6:
					img.set_pixel(x, y, Color.BLACK)
			else:
				var edge: bool = x == 0 or y == 0 or x == n - 1 or y == n - 1
				img.set_pixel(x, y, Color.BLACK if edge else Color.WHITE)
				if on and (x == y or x == n - 1 - y) and not edge:
					img.set_pixel(x, y, Color.BLACK)
	return ImageTexture.create_from_image(img)

## A System 7 modal dialog frame (double border). Returns the panel; add children to it.
static func dialog_panel(rect: Rect2) -> Panel:
	var outer := Panel.new()
	var sb := _box(Color.WHITE, 1, 0)
	sb.shadow_color = Color(0, 0, 0, 1)
	sb.shadow_size = 1
	sb.shadow_offset = Vector2(2, 2)
	outer.add_theme_stylebox_override("panel", sb)
	outer.position = rect.position
	outer.size = rect.size
	var inner := Panel.new()
	var sb2 := StyleBoxFlat.new()
	sb2.bg_color = Color(1, 1, 1, 0)
	sb2.border_color = Color.BLACK
	sb2.set_border_width_all(2)
	inner.add_theme_stylebox_override("panel", sb2)
	inner.position = Vector2(3, 3)
	inner.size = rect.size - Vector2(6, 6)
	inner.mouse_filter = Control.MOUSE_FILTER_IGNORE
	outer.add_child(inner)
	return outer

const PAD := 16.0     # consistent space between a dialog's edge and its contents

static func resize_dialog(panel: Panel, sz: Vector2) -> void:
	panel.size = sz
	if panel.get_child_count() > 0:
		var inner := panel.get_child(0) as Control
		if inner:
			inner.size = sz - Vector2(6, 6)

## One space after a sentence: the original's texts use two.
static func single_space(t: String) -> String:
	for mark in [".", "!", "?", ":"]:
		while t.contains(mark + "  "):
			t = t.replace(mark + "  ", mark + " ")
	return t

static func label(text: String, size: int = 12) -> Label:
	var l := Label.new()
	l.text = single_space(text)
	l.add_theme_font_size_override("font_size", size)
	l.add_theme_color_override("font_color", Color.BLACK)
	l.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	# a label given no width would wrap after every letter: only wrap when sized
	var unwrap_if_unsized := func() -> void:
		if l.size.x < 8.0:
			l.autowrap_mode = TextServer.AUTOWRAP_OFF
	l.ready.connect(unwrap_if_unsized)
	return l

## Default (outlined) Mac push button.
static func default_button(b: Button) -> void:
	var sb := _box(Color.WHITE, 3, 6)
	sb.content_margin_left = 10
	sb.content_margin_right = 10
	sb.content_margin_top = 0
	sb.content_margin_bottom = 0
	b.add_theme_stylebox_override("normal", sb)
	b.add_theme_stylebox_override("hover", sb)
