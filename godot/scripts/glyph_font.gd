class_name GlyphFont
extends RefCounted
## Draws characters from a converted Macintosh bitmap font (FONT/NFNT resource).
## The atlas PNG has white glyphs on transparent; glyphs are tinted when drawn.
## The "Monsters" font (FONT 3471, family 27, 15pt) is the game's tile set.

var atlas: Texture2D
var glyphs: Dictionary = {}
var ascent := 0
var height := 0

func _init(base_path: String) -> void:
	atlas = load(base_path + ".png")
	var v = JSON.parse_string(FileAccess.get_file_as_string(base_path + ".json"))
	if v is Dictionary:
		ascent = int(v.get("ascent", 0))
		height = int(v.get("height", 0))
		var g: Dictionary = v.get("glyphs", {})
		for k in g.keys():
			glyphs[int(k)] = g[k]

func has(code: int) -> bool:
	return glyphs.has(code)

## Draw glyph with its cell's top-left at pos (in the canvas item's local space).
func draw(ci: CanvasItem, code: int, pos: Vector2, color: Color, scale: float = 1.0) -> void:
	if atlas == null or not glyphs.has(code):
		return
	var g: Dictionary = glyphs[code]
	var w: float = float(g["w"])
	var src := Rect2(float(g["x"]), 0.0, w, float(height))
	var dst := Rect2(pos + Vector2(float(g["offset"]) * scale, 0.0), Vector2(w, float(height)) * scale)
	ci.draw_texture_rect_region(atlas, dst, src, color)
