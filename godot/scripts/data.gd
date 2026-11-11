extends Node
## Global game data loaded from the converted Macintosh resources.
## game_data.json is built from the STR# resources in "CK art&stuff".

var d: Dictionary = {}
var art: Dictionary = {}      # raw art_resources.json (DLOG/DITL/STR#)
var story: String = ""
var _tex_cache: Dictionary = {}

func _ready() -> void:
	d = _load_json("res://assets/data/game_data.json")
	art = _load_json("res://assets/data/art_resources.json")
	# the opening story: story.json is always exported (a plain .txt file is left out of exported games
	# unless the export preset lists *.txt); story.txt is still read if the .json is missing
	var sj := _load_json("res://assets/data/story.json") if FileAccess.file_exists("res://assets/data/story.json") else {}
	story = str(sj.get("story", ""))
	if story == "":
		var f := FileAccess.open("res://assets/data/story.txt", FileAccess.READ)
		if f:
			story = f.get_as_text()

func _load_json(path: String) -> Dictionary:
	var txt := FileAccess.get_file_as_string(path)
	if txt == "":
		push_error("Missing data file: " + path)
		return {}
	var v = JSON.parse_string(txt)
	return v if v is Dictionary else {}

func list(key: String) -> Array:
	return d.get(key, [])

func s(key: String, idx: int, fallback: String = "") -> String:
	var a: Array = list(key)
	if idx >= 0 and idx < a.size():
		return str(a[idx])
	return fallback

func monsters() -> Array:
	return list("monsters")

## Texture lookup. name examples: "art_133", "cicn_art_1128", "help_10001"
func tex(name: String) -> Texture2D:
	if _tex_cache.has(name):
		return _tex_cache[name]
	var t: Texture2D = null
	for dir in ["res://assets/pictures/", "res://assets/icons/", "res://assets/patterns/"]:
		var p: String = dir + name + ".png"
		if ResourceLoader.exists(p):
			t = load(p)
			break
	if t == null:
		# names with resource-name suffixes, e.g. art_1250_magic_box.png
		for dir in ["res://assets/pictures/", "res://assets/icons/", "res://assets/patterns/"]:
			for fn in _png_files(dir):
				if fn.begins_with(name + "_"):
					t = load(dir + fn)
					break
			if t != null:
				break
	_tex_cache[name] = t
	return t

## The .png files in a folder, listed once.  In an exported game the folder holds only the import stubs
## ("x.png.import", sometimes "x.png.remap"), not the images, so the stub endings are removed: loading
## the original name ("x.png") still works, since Godot maps it to the imported image.
var _png_index := {}

func _png_files(dir: String) -> Array:
	if _png_index.has(dir):
		return _png_index[dir]
	var out: Array = []
	var da := DirAccess.open(dir)
	if da:
		for fn in da.get_files():
			var f: String = fn.trim_suffix(".remap").trim_suffix(".import")
			if f.ends_with(".png") and not out.has(f):
				out.append(f)
	_png_index[dir] = out
	return out

func monster_icon(monster_id: int) -> Texture2D:
	# cicn resources 1128.. are the monster portraits, in STR# order (orc = STR# 2 = cicn 1128)
	return tex("cicn_art_%d" % (1126 + monster_id))
