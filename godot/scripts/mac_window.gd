class_name MacWindow
extends Control
## A System 7 document window: pinstriped title bar, close box, 1-px frame and shadow.
## Content goes in `body`, whose rect is the original WIND content rect.

const TITLE_H := 19
var title := ""
var active := true
var closable := false
var resizable := true
var min_size := Vector2(60, 40)
var body: Control
var _drag := false
var _resize := false
var aspect := 0.0                 # height / width to keep when resized (0 = free)
const GROW := 15.0

signal body_resized(new_size: Vector2)
signal moved                      # after the window has been dragged to a new place

func _init(t: String, content_rect: Rect2) -> void:
	title = t
	position = content_rect.position - Vector2(1, TITLE_H)
	size = content_rect.size + Vector2(2, TITLE_H + 1)
	mouse_filter = Control.MOUSE_FILTER_STOP
	body = Control.new()
	body.position = Vector2(1, TITLE_H)
	body.size = content_rect.size
	body.clip_contents = true
	add_child(body)

func set_title(t: String) -> void:
	if t != title:
		title = t
		queue_redraw()

func _draw() -> void:
	draw_rect(Rect2(Vector2(1, 1), size), Color.BLACK)          # drop shadow
	draw_rect(Rect2(Vector2.ZERO, size), Color.WHITE)
	draw_rect(Rect2(Vector2(0.5, 0.5), size - Vector2(1, 1)), Color.BLACK, false, 1.0)
	draw_line(Vector2(0, TITLE_H - 0.5), Vector2(size.x, TITLE_H - 0.5), Color.BLACK)
	if active:
		for i in 6:
			var y := 4.5 + i * 2
			draw_line(Vector2(2, y), Vector2(size.x - 2, y), Color(0.55, 0.55, 0.55))
		if closable:
			draw_rect(Rect2(8, 4, 11, 11), Color.WHITE)
			draw_rect(Rect2(8.5, 4.5, 10, 10), Color.BLACK, false, 1.0)
	var font := get_theme_default_font()
	var tw: float = font.get_string_size(title, HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x
	var tx: float = floor((size.x - tw) / 2.0)
	draw_rect(Rect2(tx - 6, 2, tw + 12, TITLE_H - 4), Color.WHITE)
	draw_string(font, Vector2(tx, 14), title, HORIZONTAL_ALIGNMENT_LEFT, -1, 12,
		Color.BLACK if active else Color(0.55, 0.55, 0.55))

## System 7 grow box, drawn over the body's bottom-right corner.
func _grow_rect() -> Rect2:
	return Rect2(size - Vector2(GROW + 1, GROW + 1), Vector2(GROW, GROW))



func _ready() -> void:
	if resizable:
		var grip := Control.new()
		grip.name = "Grow"
		grip.size = Vector2(GROW, GROW)
		grip.position = size - Vector2(GROW + 1, GROW + 1)
		grip.mouse_default_cursor_shape = Control.CURSOR_FDIAGSIZE
		grip.draw.connect(_draw_grip.bind(grip))
		grip.gui_input.connect(_grip_input)
		add_child(grip)

func _draw_grip(_grip: Control) -> void:
	pass   # invisible grow box; the resize cursor still shows

func _grip_input(event: InputEvent) -> void:
	var mb := event as InputEventMouseButton
	if mb and mb.button_index == MOUSE_BUTTON_LEFT:
		_resize = mb.pressed
		if mb.pressed:
			move_to_front()
	var mm := event as InputEventMouseMotion
	if mm and _resize:
		if aspect > 0.0:
			# follow whichever way the mouse moves more; the height follows the width
			var dw: float = mm.relative.x if absf(mm.relative.x) >= absf(mm.relative.y / aspect) else mm.relative.y / aspect
			set_body_size(Vector2(body.size.x + dw, 0.0))
		else:
			set_body_size(body.size + mm.relative)

func set_body_size(s: Vector2) -> void:
	if aspect > 0.0:
		s.x = maxf(s.x, min_size.x)
		s.y = s.x * aspect
	# never narrower than the title plus a little title bar on each side
	var tw: float = get_theme_default_font().get_string_size(title, HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x + 40.0 if resizable else 0.0
	s = Vector2(maxf(s.x, maxf(min_size.x, tw)), maxf(s.y, min_size.y))
	body.size = s
	size = s + Vector2(2, TITLE_H + 1)
	var g := get_node_or_null("Grow")
	if g:
		g.position = size - Vector2(GROW + 1, GROW + 1)
		g.move_to_front()
	queue_redraw()
	body_resized.emit(s)

func _gui_input(event: InputEvent) -> void:
	var mb := event as InputEventMouseButton
	if mb and mb.button_index == MOUSE_BUTTON_LEFT:
		if mb.pressed:
			move_to_front()
		if mb.pressed and mb.position.y < TITLE_H:
			_drag = true
		elif not mb.pressed:
			if _drag:
				moved.emit()
			_drag = false
	var mm := event as InputEventMouseMotion
	if mm and _drag:
		position += mm.relative
