extends Control
## Castle Knowledge - main controller.
## Recreates the original Macintosh presentation on an 800x600 screen:
## menu bar (MENU 2-6), the startup sequence traced in f3_672c / f7_1666,
## the title screen (DLOG/DITL 2600) and the four game windows.

signal modal_done(result)

const STORE_PRICES := {
	# APPROX prices, scaled to the playthrough's economy (a potion of Add Hit Points was 1400 gp)
	"armor": [20, 60, 120, 220, 360], "sword": [250, 180, 150, 100, 60], "shield": [40, 80, 130, 200, 300],
}
# Store stock: [item index, price].  Only helpful items are sold.
const STORE_POTIONS := [[0, 900], [2, 900], [4, 400], [5, 1400], [7, 1200], [9, 800], [11, 800], [14, 2000], [15, 700], [17, 1500]]
const STORE_SCROLLS := [[0, 300], [1, 250], [2, 400], [3, 600], [5, 600], [7, 500], [10, 900], [12, 1200]]
const STORE_WANDS := [[0, 500], [1, 900], [2, 1500], [3, 1200], [4, 500], [5, 900], [6, 1500], [7, 1200], [12, 1200], [14, 1500]]
const STORE_RINGS := [[0, 1500], [1, 1200], [2, 1000], [4, 1000]]          # power, speed, knowledge, healing
const STORE_HELMS := [[1, 1000], [2, 1200]]                                   # protection, warrior
const STORE_AMULETS := [[0, 1000], [1, 900], [4, 1100], [5, 1100]]
# Vending machine (exact, from the playthrough): strength, dexterity, IQ, luck, health, food
## Vend-O-Matic (DITL 251): symbol, the stat shown above it, the item it sells, the price (f4_47fe).
const VENDING := [[201, "str", {"kind": "potion", "type": 0}, 1000], [202, "dex", {"kind": "potion", "type": 2}, 1000],
	[203, "iq", {"kind": "potion", "type": 11}, 750], [204, "lk", {"kind": "potion", "type": 9}, 750],
	[130, "hp", {"kind": "potion", "type": 5}, 500], [1228, "food", {"kind": "food"}, 200]]
const SPELL_ICON := 20036     # f7_2f40 draws cicn 20036 for every available spell
const DIR_NAMES := ["", "North", "East", "South", "West"]
# Window content rects on the 800x600 screen (WIND 128/130/131/133 sizes,
# positions measured from the playthrough at the start of a game).
const R_STATS := Rect2(13, 40, 269, 192)
const R_VIEW := Rect2(391, 40, 200, 240)
const R_OVERHEAD := Rect2(11, 303, 420, 210)
const R_INVENTORY := Rect2(453, 303, 138, 210)
const R_MESSAGES := Rect2(11, 534, 580, 62)     # not in the original (see README)
const SIDE_W := 62.0                              # Spells / Wands windows: fixed width
const SIDE_GAP := 5.0                             # their distance from the 3D view
const R_SPELLS := Rect2(391 - SIDE_GAP - SIDE_W, 40, SIDE_W, 40)    # left of the 3D view
const R_WEAPON := Rect2(391 + 200 + SIDE_GAP, 40, SIDE_W, 40)       # right of the 3D view (WIND 132)

var game: GameState
var menubar: MacMenuBar
var desktop: ColorRect
var layer_game: Control
var layer_screen: Control       # startup / title screens
var w_stats: MacWindow
var w_view: MacWindow
var w_over: MacWindow
var w_inv: MacWindow
var w_msg: MacWindow
var w_spells: MacWindow
var w_weapon: MacWindow
var view3d: View3D
var map: MapView
var log_box: RichTextLabel
var busy := false
var playing := false
var _skip := false
var auto_pickup := false     # Options > Auto Item Pickup (off: "You found ... Do you want it?")
var pending_levels: Array = []
var pending_kill: Dictionary = {}
var pending_popups: Array = []
var pending_notes: Array = []       # special attacks: shown for 3 seconds after the turn
var _nav_ready_at := 0      # ignore movement briefly after a dialog closes

# ================================================================= setup
func _ready() -> void:
	theme = MacUI.make_theme()
	game = GameState.new()
	game.load_prefs()              # the remembered Set Problem Options
	game.message.connect(_on_message)
	game.stats_changed.connect(_refresh)
	desktop = ColorRect.new()
	desktop.color = MacUI.DESKTOP
	desktop.size = MacUI.SCREEN
	desktop.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(desktop)
	layer_game = Control.new()
	layer_game.size = MacUI.SCREEN
	layer_game.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(layer_game)
	layer_screen = Control.new()
	layer_screen.size = MacUI.SCREEN
	layer_screen.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(layer_screen)
	_build_menubar()
	_menus_off()
	_build_windows()
	_setup_ui_prefs()
	get_tree().node_added.connect(_on_node_added_tips)
	layer_game.visible = false
	_startup()

func _build_menubar() -> void:
	menubar = MacMenuBar.new()
	menubar.app_icon = Data.tex("ics8_app_128")
	add_child(menubar)
	menubar.add_menu("Command", [["New Game", "N"], ["Default Player", "D"], ["Save Game", "S"], ["Resume Game", "R"], ["Exit To Main Menu", ""], ["-", ""], ["Quit", "Q"]])
	menubar.add_menu("Inventory", [["Potions", "P"], ["Scrolls", "M"], ["Wands", ""], ["Armor", ""], ["Sword", ""], ["Shield", ""], ["Rings", ""], ["Helms", ""], ["Amulets", ""]])
	menubar.add_menu("Options", _options_items())
	menubar.add_menu("Status", [["Player Progress", ""], ["Crystal Location", ""]])
	menubar.add_menu("Rations", [["Food", ""]])
	menubar.add_menu("Debug", [["Dialog Proof", ""], ["-", ""], ["Item Spawn", ""], ["POI Spawn", ""], ["Enemy Spawn", ""], ["-", ""],
		["Go To Floor", ""], ["Reveal Map", ""], ["Enable Combat", ""], ["Solve a Problem", ""], ["Print Player Stats", ""]])
	menubar.set_item_checked("Debug", 8, true)
	menubar.add_menu("Help", [["About Castle Knowledge…", ""], ["Castle Knowledge Help", ""]])
	menubar.set_item_checked("Options", 1, false)
	menubar.action.connect(_menu_action)
	_menus_for_play(false)

func _options_items() -> Array:
	var hide := "Hide Overhead View"
	if w_over != null and not w_over.visible:
		hide = "Show Overhead View"
	var hide_msg := "Hide Messages"
	if w_msg != null and not w_msg.visible:
		hide_msg = "Show Messages"
	return [["Set Problem Options", "G"], ["Auto Item Pickup", "T"], ["Enable Sounds", "H"], ["-", ""], [hide, ""], [hide_msg, ""],
		["Hide Tooltips" if tooltips_on else "Show Tooltips", ""], ["Hide Debug Menu" if debug_menu_on else "Show Debug Menu", ""],
		["-", ""], ["Reset Window Positions", ""]]

## Rebuilds the Options menu and its check marks.
func _refresh_options_menu() -> void:
	menubar.set_items("Options", _options_items())
	menubar.set_item_checked("Options", 1, auto_pickup)
	menubar.set_item_checked("Options", 2, Sfx.enabled)

var _menus_live := false            # no menus (or their shortcuts) until the main menu has appeared

func _menus_off() -> void:
	for t in ["Command", "Inventory", "Options", "Status", "Rations", "Debug", "Help"]:
		menubar.set_enabled(t, false)

func _menus_on() -> void:
	_menus_live = true
	for t in ["Command", "Options", "Debug", "Help"]:
		menubar.set_enabled(t, true)

func _menus_for_play(on: bool) -> void:
	for t in ["Inventory", "Status", "Rations"]:
		menubar.set_enabled(t, on)
	menubar.set_item_disabled("Command", 2, not on)
	menubar.set_item_disabled("Command", 4, not on)

func _build_windows() -> void:
	w_stats = MacWindow.new("", R_STATS)
	layer_game.add_child(w_stats)
	w_stats.body.draw.connect(_draw_stats)
	w_view = MacWindow.new("3D View - North", R_VIEW)
	w_view.aspect = R_VIEW.size.y / R_VIEW.size.x       # nothing in the view is ever stretched
	layer_game.add_child(w_view)
	view3d = View3D.new()
	view3d.game = game
	view3d.size = R_VIEW.size
	w_view.body.add_child(view3d)
	view3d.run_pressed.connect(_run_away)
	view3d.monster_clicked.connect(_attack_ahead)
	view3d.nav.connect(_nav)
	view3d.item_clicked.connect(_click_item_ahead)
	game.killed.connect(_on_killed)
	game.popup.connect(_on_popup)
	game.note.connect(func(t: String): pending_notes.append(t))
	game.player_hit.connect(_on_player_hit)
	game.monster_hit.connect(_on_monster_hit)
	game.monster_attacked.connect(_on_monster_attacked)
	w_view.body_resized.connect(func(s: Vector2): view3d.size = s)
	w_spells = MacWindow.new("Spells", R_SPELLS)
	w_spells.resizable = false
	w_spells.min_size = Vector2(SIDE_W, 8)
	layer_game.add_child(w_spells)
	w_spells.body.draw.connect(_draw_spells)
	w_spells.body.gui_input.connect(_spells_input)
	w_spells.body.mouse_filter = Control.MOUSE_FILTER_STOP
	w_weapon = MacWindow.new("Wands", R_WEAPON)
	w_weapon.resizable = false
	w_weapon.min_size = Vector2(SIDE_W, 8)
	layer_game.add_child(w_weapon)
	w_weapon.body.draw.connect(_draw_weapon)
	w_weapon.body.gui_input.connect(_weapon_input)
	w_weapon.body.mouse_filter = Control.MOUSE_FILTER_STOP
	game.leveled.connect(_on_leveled)
	w_over = MacWindow.new("Overhead View - Level 1", R_OVERHEAD)
	layer_game.add_child(w_over)
	map = MapView.new()
	map.game = game
	map.fit_size = R_OVERHEAD.size
	w_over.body.add_child(map)
	w_inv = MacWindow.new("Inventory", R_INVENTORY)
	w_inv.body_resized.connect(func(_s): w_inv.body.queue_redraw())
	layer_game.add_child(w_inv)
	w_inv.body.draw.connect(_draw_inventory)
	w_inv.body.gui_input.connect(_inventory_input)
	w_inv.body.mouse_filter = Control.MOUSE_FILTER_STOP
	w_msg = MacWindow.new("Messages", R_MESSAGES)
	layer_game.add_child(w_msg)
	log_box = RichTextLabel.new()
	log_box.position = Vector2(4, 1)
	log_box.size = R_MESSAGES.size - Vector2(8, 2 + MacWindow.GROW)
	log_box.scroll_following = true
	log_box.add_theme_font_size_override("normal_font_size", 11)
	log_box.add_theme_color_override("default_color", Color.BLACK)
	w_msg.body.add_child(log_box)
	# resize hooks: connected here, after every window exists
	w_over.body_resized.connect(_on_overhead_resized)
	w_msg.body_resized.connect(func(s: Vector2): log_box.size = s - Vector2(8, 2 + MacWindow.GROW))

func _on_overhead_resized(s: Vector2) -> void:
	map.fit_size = s
	map.refit()

func _on_message(t: String) -> void:
	if log_box:
		log_box.append_text(MacUI.single_space(t.strip_edges()) + "\n")

# ================================================================= startup sequence
func _input(event: InputEvent) -> void:
	# Enter / Space press the default button of a plain dialog (e.g. the stairs)
	if _enter_presses_default:
		var k := event as InputEventKey
		var focused := get_viewport().gui_get_focus_owner()
		if focused is BaseButton:
			pass                        # Tab moved the focus: the focused button takes Space / Return
		elif k and k.pressed and not k.echo and k.keycode in [KEY_ENTER, KEY_KP_ENTER, KEY_SPACE]:
			_enter_presses_default = false
			get_viewport().set_input_as_handled()
			modal_done.emit(0)
			return
	var mb := event as InputEventMouseButton
	if mb and mb.pressed:
		_skip = true
	var k := event as InputEventKey
	if k and k.pressed:
		_skip = true

## Waits; returns true early if the player clicks or presses a key.
func _wait(seconds: float) -> bool:
	var t0 := Time.get_ticks_msec()
	while Time.get_ticks_msec() - t0 < int(seconds * 1000.0):
		if _skip:
			return true
		await get_tree().process_frame
	return false

func _clear_screen() -> void:
	for c in layer_screen.get_children():
		c.queue_free()

func _startup() -> void:
	# (the original's first screen, f3_672c, showed a progress bar while it preloaded pictures; the
	# port has nothing to load, so it starts with the title zoom)
	await _title_zoom()
	await _introduction()
	_show_title()

## f3_672c: PICT 4500 centred, PICT 4501 strip above it, and a progress bar below
## that grows 3 px per loaded resource, filled with ppat 140.
func _loading_screen() -> void:
	_clear_screen()
	var top := (MacUI.SCREEN.y - 300) / 2.0
	var left := (MacUI.SCREEN.x - 300) / 2.0
	var pic := TextureRect.new()
	pic.texture = Data.tex("app_4500")
	pic.position = Vector2(left, top)
	pic.size = Vector2(300, 300)
	pic.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	layer_screen.add_child(pic)
	var strip := TextureRect.new()
	strip.texture = Data.tex("app_4501")
	strip.position = Vector2(left + 50, top - 30)
	strip.size = Vector2(200, 18)
	strip.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	layer_screen.add_child(strip)
	# f3_672c: each step FillCRect(r, ppat 140) then FrameRect(r) on the growing rect
	# r = (left+100, top+320) .. (+2+3n, +15); there is no background trough.
	var bar := TextureRect.new()
	bar.texture = Data.tex("ppat_art_140")
	bar.stretch_mode = TextureRect.STRETCH_TILE
	bar.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	bar.position = Vector2(left + 101, top + 320)
	bar.size = Vector2(2, 15)
	layer_screen.add_child(bar)
	var outline := ReferenceRect.new()
	outline.border_color = Color.BLACK
	outline.border_width = 1.0
	outline.editor_only = false
	outline.position = bar.position
	outline.size = bar.size
	layer_screen.add_child(outline)
	_skip = false
	for i in 33:
		bar.size.x = mini(99, 2 + i * 3)
		outline.size = bar.size
		await _wait(0.05)
	await _wait(0.3)

## The "CASTLE KNOWLEDGE" title (PICT 135) zooms in from a thin line.
func _title_zoom() -> void:
	_clear_screen()
	var t := TextureRect.new()
	t.texture = Data.tex("art_135")
	t.size = Vector2(447, 182)
	t.position = (MacUI.SCREEN - t.size) / 2.0
	t.pivot_offset = t.size / 2.0
	t.scale = Vector2(0.15, 0.02)
	layer_screen.add_child(t)
	var tw := create_tween()
	tw.tween_property(t, "scale", Vector2.ONE, 0.3)
	_skip = false
	await _wait(2.5)

## Introduction (f4_0000, DLOG 2500 / DITL 2500, "click mouse" DLOG 4015):
##  1. the four crystals (cicn 9000-9003, at the dialog corners) fly to the crystal spot
##  2. the big crystal forms there, growing from item 2 inset (30,40) by 1x2 px a frame
##     while spinning through the 16 gem frames (PICT 2501-2516); sound 23568
##  3. it keeps spinning while the story scrolls up through the text band (item 1)
##  4. each crystal in turn drops from it, moving (3,15) a frame without erasing,
##     leaving the slanted column
## Sound (f4_0000 replays the phase's sound each time it finishes): phase 1 loops 23566,
## phases 2-3 loop 23568, phase 4 and the rest loop 23567.  A click ends it.
func _introduction() -> void:
	_clear_screen()
	var banner := MacUI.dialog_panel(Rect2(240, 26, 320, 30))
	var bl := MacUI.label("Click mouse to stop introduction.", 12)
	bl.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	bl.position = Vector2(8, 6)
	bl.size = Vector2(304, 18)
	banner.add_child(bl)
	layer_screen.add_child(banner)
	var origin := Vector2(207, 105)
	var dlg := Control.new()
	dlg.position = origin
	dlg.size = Vector2(386, 388)
	dlg.clip_contents = true
	layer_screen.add_child(dlg)
	var border := ReferenceRect.new()
	border.border_color = Color.BLACK
	border.editor_only = false
	border.position = origin - Vector2(1, 1)
	border.size = Vector2(388, 390)
	layer_screen.add_child(border)
	var castle := TextureRect.new()
	castle.texture = Data.tex("art_133")
	castle.position = Vector2(-2, -2)
	dlg.add_child(castle)
	# item 1: the text band
	var band := ColorRect.new()
	band.color = Color.WHITE
	band.position = Vector2(8, 3)
	band.size = Vector2(365, 55)
	band.clip_contents = true
	dlg.add_child(band)
	var story := MacUI.label(Data.story.to_upper(), 10)
	story.position = Vector2(4, 56)
	story.size = Vector2(357, 0)
	band.add_child(story)
	var gem_frames: Array = []
	for f in 16:
		gem_frames.append(Data.tex("art_%d" % (2501 + f)))
	var item2 := Rect2(136, 62, 120, 130)
	var target := item2.get_center()
	var corners := [Vector2(30, 60), Vector2(30, 345), Vector2(315, 60), Vector2(315, 345)]
	var flyers: Array = []
	for i in 4:
		var t := TextureRect.new()
		t.texture = Data.tex("cicn_art_%d" % (9000 + i))
		t.position = corners[i]
		dlg.add_child(t)
		flyers.append(t)
	Sfx.loop(23566)          # phase 1 sound, replayed whenever it ends (f4_0000)
	_skip = false
	# phase 1: converge (velocities are initialized data; each crystal is aimed at the spot)
	var steps := 40
	for s in steps:
		if _skip:
			break
		for i in 4:
			var t: TextureRect = flyers[i]
			var start: Vector2 = corners[i]
			t.position = start.lerp(target - Vector2(16, 16), float(s + 1) / float(steps)).round()
		await get_tree().create_timer(0.05).timeout
	for t in flyers:
		(t as TextureRect).queue_free()
	# phase 2: the crystal forms
	var gem := TextureRect.new()
	gem.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	dlg.add_child(gem)
	var r := item2.grow_individual(-30, -40, -30, -40)
	var n := 0
	if not _skip:
		Sfx.loop(23568)      # phases 2-3: 'jewel forming', replayed while the crystal forms and the story scrolls
	while not _skip and r.size.x < item2.size.x:
		r = r.grow_individual(1, 2, 1, 2)
		gem.position = r.position
		gem.size = r.size
		gem.texture = gem_frames[n % 16]
		n += 1
		await get_tree().create_timer(0.05).timeout
	gem.position = item2.position
	gem.size = item2.size
	# phases 3 and 4: spin, scroll the story, and drop the crystals one after another
	var drop := 0
	var drop_pos := Vector2.ZERO
	var drop_t: TextureRect = null
	var tick := 0
	var story_done := false
	while not _skip:
		gem.texture = gem_frames[n % 16]
		n += 1
		tick += 1
		if tick % 2 == 0:
			story.position.y -= 1
			if story.position.y < -story.size.y:
				story.position.y = 56
		if drop < 4 and tick > 20:
			if drop == 0 and drop_t == null and story_done == false:
				story_done = true
				Sfx.loop(23567)   # phase 4: 'opening 2' from the first drop to the end
			if drop_t == null:
				drop_pos = Vector2(target.x - 16, item2.end.y - 24)
			drop_pos += Vector2(3, 15)
			drop_t = TextureRect.new()
			drop_t.texture = Data.tex("cicn_art_%d" % (9000 + drop))
			drop_t.position = drop_pos
			dlg.add_child(drop_t)
			if drop_pos.y > 388:
				drop += 1
				drop_t = null
		await get_tree().create_timer(0.1).timeout
	Sfx.stop_long()

# ================================================================= title screen (DLOG 2600)
func _show_title() -> void:
	Sfx.play_music(23656, false)    # the main menu's sound, played once (stopped when you leave)
	playing = false
	layer_game.visible = false
	_menus_on()
	_menus_for_play(false)
	_clear_screen()
	var origin := Vector2(72, 73)
	var pic := TextureRect.new()
	pic.texture = Data.tex("art_139")
	pic.position = origin - Vector2(1, 2)
	layer_screen.add_child(pic)
	var frame := Panel.new()
	var fsb := StyleBoxFlat.new()
	fsb.draw_center = false
	fsb.border_color = Color.BLACK
	fsb.set_border_width_all(1)
	frame.add_theme_stylebox_override("panel", fsb)
	frame.mouse_filter = Control.MOUSE_FILTER_IGNORE
	var fsz: Vector2 = pic.size if pic.size != Vector2.ZERO else (pic.texture.get_size() if pic.texture else Vector2.ZERO)
	frame.position = pic.position
	frame.size = fsz
	layer_screen.add_child(frame)
	# DITL 2600: picture buttons 5001-5006 (pressed state 5011-5016)
	var items: Array = Data.art.get("DITL", {}).get("2600", [])
	var acts := {5001: "about", 5002: "new", 5003: "resume", 5004: "default", 5005: "quit", 5006: "help"}
	# the buttons keep their places, top to bottom, but in this order
	var order := [5002, 5004, 5003, 5006, 5001, 5005]
	var rects: Array = []
	for it in items:
		if acts.has(int(it.get("resID", 0))):
			rects.append(it["rect"])
	rects.sort_custom(func(a, b2): return float(a[0]) < float(b2[0]) or (float(a[0]) == float(b2[0]) and float(a[1]) < float(b2[1])))
	var placed: Array = []
	for k in mini(order.size(), rects.size()):
		placed.append({"resID": order[k], "rect": rects[k]})
	for it in placed:
		var rid := int(it.get("resID", 0))
		var r: Array = it["rect"]
		var b := TextureButton.new()
		b.texture_normal = Data.tex("art_%d" % rid)
		b.texture_pressed = Data.tex("art_%d" % (rid + 10))
		b.ignore_texture_size = true
		b.stretch_mode = TextureButton.STRETCH_SCALE
		b.position = origin + Vector2(float(r[1]), float(r[0]))
		b.size = Vector2(float(r[3]) - float(r[1]), float(r[2]) - float(r[0]))
		var act: String = acts[rid]
		b.pressed.connect(func(): _title_action(act))
		layer_screen.add_child(b)

func _title_action(act: String) -> void:
	Sfx.stop_music()
	if busy:
		return
	match act:
		"quit":
			get_tree().quit()
		"help":
			await _help()
		"about":
			await _about_box()
		"resume":
			if not game.has_save():
				await alert("There is no saved game to resume.")
			elif game.load_game():
				_start_play()
		"default":
			var rd = await modal("Please enter the name of your player.", ["OK", "Cancel"], null, true)
			if int(rd[0]) == 1:
				return
			var dn := str(rd[1]).strip_edges()
			game.new_game(dn if dn != "" else "Player")
			game.p["str"] = maxi(14, int(game.p["str"]))      # the default player is never weaker than 14
			game.p["gold"] = 120
			game.p["sword"] = {"type": 2, "bonus": 0}          # the default player always has the long sword
			game.p["hp"] = 12                                  # (the original's 7 proved too unforgiving)
			game.p["maxhp"] = 12
			game.p["armor"] = {"type": 1, "bonus": 0}
			await _problem_options()                          # (shown as part of starting, as in the original)
			_start_play()
		"new":
			var r = await modal("Please enter the name of your player.", ["OK", "Cancel"], null, true)
			if int(r[0]) == 1:
				return
			var nm := str(r[1]).strip_edges()
			game.new_game(nm if nm != "" else "Player")
			await _problem_options()
			if not await _attributes():
				return
			game.p["maxhp"] = 12                              # both ways of starting begin with 12 hit points
			game.p["hp"] = 12
			_start_play()
			if not await _money_round():
				_show_title()                                 # Cancel in the gold quiz: back to the main menu
				return
			await _start_shop()

func _start_play() -> void:
	Sfx.stop_long()
	_clear_screen()
	playing = true
	layer_game.visible = true
	_menus_for_play(true)
	log_box.clear()
	_on_message("Welcome, %s.  Find the four crystals and carry them to the Tower of Jewels." % game.p["name"])
	_on_message("W/A/D or the arrow keys: forward / turn · Space: pick up · click inventory items")
	_refresh()

# ================================================================= About box (f7_1666 / DLOG 130)
## Picture 141 background with the crystal spinning (a frame every 16 ticks) and the
## credit pages 5500-5503 rotating every 180 ticks.  A click closes it.
func _about_box() -> void:
	busy = true
	var app_res: Dictionary = Data._load_json("res://assets/data/app_resources.json")
	var items: Array = app_res.get("DITL", {}).get("130", [])
	var dlog: Dictionary = app_res.get("DLOG", {}).get("130", {})
	var dr: Array = dlog.get("rect", [100, 150, 360, 650])
	var size_v := Vector2(400, 190)                    # a compact box: the crystal left, the text right
	var pos := ((MacUI.SCREEN - size_v) / 2.0).floor()
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(pos, size_v))
	ov.add_child(panel)
	var rects: Array = []
	for it in items:
		var r: Array = it["rect"]
		rects.append(Rect2(float(r[1]), float(r[0]), float(r[3]) - float(r[1]), float(r[2]) - float(r[0])))
	var r_gem := Rect2(18, 30, 120, 130)
	var r_page := Rect2(150, 20, 232, 150)
	var gem := TextureRect.new()
	gem.position = r_gem.position
	gem.size = r_gem.size
	gem.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	gem.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	panel.add_child(gem)
	var page := MacUI.label("", 12)
	page.position = r_page.position
	page.size = r_page.size
	page.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	page.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	panel.add_child(page)
	var about_text := ["Castle Knowledge\n\nA game where you learn as you play.\n\n1995, 2026",
		"Based on Castle Knowledge 2.6 Shareware\n\nBy George Herrin, Jr\n\nPorted to Godot 4 by Andy Davis\n(andy@191x.com)"]
	var g := 0
	var pg := 1
	var t_gem := 0
	var t_page := Time.get_ticks_msec()
	page.text = about_text[0]
	await get_tree().process_frame
	_skip = false
	while not _skip:
		var now := Time.get_ticks_msec()
		if now - t_gem >= 267:            # 16 ticks
			gem.texture = Data.tex("art_%d" % (2501 + g))
			g = (g + 1) % 16
			t_gem = now
		if now - t_page >= 3000:          # 180 ticks
			page.text = about_text[pg]
			pg = (pg + 1) % about_text.size()
			t_page = now
		await get_tree().process_frame
	ov.queue_free()
	busy = false

## Help: the help pages (PICT 10000-10011) with Next / OK, as in the playthrough.
## The help pages, from the original's pictures (PICT 10000-10011), as text with their icons.
## Each block: [heading, [icon ids], text].  "Moving Around" describes this version's controls.
const HELP_PAGES := [
	[
		["The Game of Castle Knowledge", [], "Castle Knowledge is unlike almost any other role playing game you may have tried. Each and every time you start a new game, a new 20 level castle is generated containing monsters, treasure and wonderful surprises."],
		["How to Win", [], "You must find the four crystals scattered throughout the castle and bring them to the Tower of Jewels at the end of floor 20."],
		["Playing the Game", [], "Start Castle Knowledge. You may interrupt the introduction to the game at any time by clicking the mouse. At this point the entrance to Castle Knowledge will be presented. Click on one of the buttons displayed on the door to the castle to begin play or quit."]
	],
	[
		["Controls", [], "To move around the castle you can use the mouse or the keyboard."],
		["", [], " "],
		["", [], "Move forward: W, Up, or click when the cursor shows an up arrow."],
		["", [], "Turn left: A, Left, or click when the cursor shows a left arrow."],
		["", [], "Turn right: D, Right, or click when the cursor shows a right arrow."],
		["", [], "Attack: Up, Shift, or click on the enemy."],
		["", [], "Pick up item: Spacebar."],
		["", [], " "],
		["", [], "For everything else just try clicking or double clicking on what you see and discover what happens."]
	],
	[
		["Your Player", [], "As the potential saviour of the human race you will have certain abilities and characteristics as you begin the game. These include:"],
		["", [130], "Health: This is the most important item you need to watch. The amount of damage your player can sustain increases as you gain experience in the game. If it falls to zero too many times you'll have to start over."],
		["", [201], "Strength: This is one of your most important characteristics as it determines how well you will be able to attack the evil creatures you encounter in the game."],
		["", [202], "Dexterity: This is also a very important characteristic since it helps determine how well you will be able to avoid the attack from the creatures you encounter."],
		["", [203], "Intelligence: Your intelligence determines how successful you will be at casting magic spells during fights."],
		["", [204], "Luck: Your luck plays a part in almost everything you do."],
	],
	[
		["Basics", [504, 503, 502, 501, 500], "Your level of protection from attack is partially determined by the type of armor you're wearing. There are five types available - plate mail, chain mail, ring mail, leather and cloth robe."],
		["", [601, 602, 603, 604, 605], "Your ability to defend yourself during attack depends to a large degree by the type of weapon you're using. Again there are five available types - two hand sword, scimitar, long sword, rapier and short sword."],
		["", [705, 704, 703, 702, 701], "Your protection from attack is also determined by any shield you may be using. Five grades of shield can be found in the game - gold, silver, bronze, wooden and leather."],
		["", [1238], "Gold: You will find gold at various times in the game. You can use this gold to purchase needed items."],
		["", [1228], "Food: You will also find plates of food throughout the game. You'll have to eat when you get hungry."],
	],
	[
		["Items", [], "Castle Knowledge contains a large number of different magical items. The nature and property of each of these items will be hidden from you as you begin each new game. Just because you've completed the game once and a red potion increased your strength doesn't necessarily mean it will do the same thing the next time you start a new game. Don't be afraid to experiment. You might just find something different from what you expected."],
		["", [1232], "Potions: Castle Knowledge has many different potions which can alter various things about your player. Some of these changes will be permanent, while others are only temporary."],
		["", [1233], "Scrolls: Castle Knowledge has a number of scrolls which can alter various things about your player or your equipment. Just like with potions some of these changes are permanent, while others are only temporary."],
		["", [1231], "Wands: Castle Knowledge has several wands which can be used during battles. Some of the wands actually help the monsters so pay attention."],
		["", [504], "Armor: This shows any extra armor you may be carrying and allows you to change into it."],
		["", [601], "Sword: This shows any extra sword you may be carrying and allows you to use it."],
		["", [705], "Shield: This shows any shields you may be carrying and allows you to use them."],
		["", [1234], "Rings: Castle Knowledge has rings which can alter various things about your player. All of these changes will continue as long as you're wearing the ring."],
		["", [1236], "Helms: Castle Knowledge has helms which can alter various things about your player. All of these changes will continue as long as you're wearing the helm."],
		["", [1235], "Amulets: Castle Knowledge has amulets which can alter various things about your player. All of these changes will continue as long as you're wearing the amulet."],
		["", [9000, 9001, 9002, 9003], "Crystals - During your exploration of the Castle Knowledge you must find the four crystals (COMPASSION, WISDOM, POWER AND LEARNING). Once you have found a crystal this menu item will appear listing those you have found and telling you how many more you need to find."],
	],
	[
		["Fighting", [], "During your exploration of Castle Knowledge you will encounter a wide range of evil creatures who will try to keep you from completing your quest. If you see the creature first you can move toward it. If you place the cursor on top of the creature and it turns into a sword, you can begin a battle by clicking the mouse. Continue the fight by clicking the mouse on the creature. If you have spells or wands available, click on the icon of the one you want to use."],
		["Picking up Items", [], "At times you will find a potion, wand, scroll or other item in the castle. To pick it up, move the cursor over the top of it until it becomes a hand, then click - or, when it lies on your own space, press the Space bar. If you have Auto Item Pickup selected the item will be added to your inventory if possible. Otherwise you will be presented with the option of taking the item or not. The first time you find a particular item its magical properties will be disguised. The only way to discover what the item does is to use it."],
		["Buying Items at the Store", [], "Not only can you buy armor and swords, but SUBADD's General Store also carries a wide variety of potions, scrolls, wands, shields, and magic spells. Once you have entered the store, just click on the picture of the type of item you want to buy. A window will appear showing each of the items SUBADD has in stock. Click on the ones you want to buy. If you have enough gold, you'll be asked to confirm your purchase and the item will be added to your inventory. SUBADD has a store at the entrance to the castle and branch stores in various levels of the castle. Look for the S symbol on your overhead view."],
	],
]

## Help, page by page: headings, icons and text, with Previous / Next / OK.
func _help() -> void:
	busy = true
	var page := 0
	while true:
		var ov := _overlay()
		var W := 480.0
		var H := 360.0
		var panel := MacUI.dialog_panel(Rect2(0, 0, W, H))
		ov.add_child(panel)
		var sc := ScrollContainer.new()
		sc.position = Vector2(14, 12)
		sc.size = Vector2(W - 28, H - 64)
		sc.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_DISABLED
		panel.add_child(sc)
		var vb := VBoxContainer.new()
		vb.custom_minimum_size = Vector2(W - 44, 0)
		vb.add_theme_constant_override("separation", 8)
		sc.add_child(vb)
		for blk in HELP_PAGES[page]:
			if str(blk[0]) != "":
				var hd := MacUI.label(str(blk[0]), 15)
				vb.add_child(hd)
			if (blk[1] as Array).size() > 0:
				var row := HBoxContainer.new()
				row.add_theme_constant_override("separation", 6)
				for icon_id in blk[1]:
					var tr := TextureRect.new()
					tr.texture = _icon(int(icon_id))
					tr.custom_minimum_size = Vector2(32, 32)
					tr.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
					tr.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
					row.add_child(tr)
				vb.add_child(row)
			if str(blk[2]) != "":
				var tl := MacUI.label(str(blk[2]))
				tl.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
				tl.custom_minimum_size = Vector2(W - 48, 0)
				vb.add_child(tl)
		var pg := MacUI.label("Page %d of %d" % [page + 1, HELP_PAGES.size()], 10)
		pg.position = Vector2(16, H - 36)
		pg.size = Vector2(120, 18)
		panel.add_child(pg)
		var specs := [["Previous", 1, page > 0], ["Next", 2, page < HELP_PAGES.size() - 1], ["OK", 0, true]]
		var bx := W - 14.0
		for i in range(specs.size() - 1, -1, -1):
			var sp: Array = specs[i]
			var b := _mac_button(str(sp[0]), int(sp[1]), str(sp[0]) == "OK", not bool(sp[2]))
			b.size = b.custom_minimum_size
			bx -= b.size.x
			b.position = Vector2(bx, H - 40)
			bx -= 10.0
			panel.add_child(b)
			if str(sp[0]) == "OK":
				b.grab_focus.call_deferred()
		_pad(panel)
		panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
		var r = await _wait_modal(ov)
		ov.queue_free()
		if int(r) == 1:
			page = maxi(0, page - 1)
		elif int(r) == 2:
			page = mini(HELP_PAGES.size() - 1, page + 1)
		else:
			break
	busy = false

func _refresh() -> void:
	if game.p.is_empty() or not playing:
		return
	w_stats.set_title(str(game.p["name"]))
	w_view.set_title("3D View - " + str(DIR_NAMES[int(game.p["dir"])]))
	w_over.set_title("Overhead View - Level %d" % game.depth)
	w_stats.body.queue_redraw()
	w_inv.body.queue_redraw()
	_fit_side_windows()
	w_spells.body.queue_redraw()
	w_weapon.body.queue_redraw()
	_fountain_sound()
	view3d.queue_redraw()
	map.queue_redraw()
	var food := int(game.p.get("rations", 0))
	var rations: Array = []
	for i in GameState.MAX_RATIONS:
		rations.append(["Food", ""])
	menubar.set_items("Rations", rations)
	for i in GameState.MAX_RATIONS:
		menubar.set_item_disabled("Rations", i, i >= food)

func _icon(id: int) -> Texture2D:
	return Data.tex("cicn_art_%d" % id)

## Stats window: strength / health, dexterity / armor, IQ / sword, luck / gold
## (icons cicn 201-204, 130, 500-504, 601-607, 208; layout from the playthrough).
func _draw_stats() -> void:
	var b := w_stats.body
	var p := game.p
	if p.is_empty():
		return
	var font := get_theme_default_font()
	var rows: Array = [
		[201, str(int(p["str"])), 130, "%d [%d]" % [maxi(0, int(p["hp"])), int(p["maxhp"])]],
		[202, str(int(p["dex"])), View3D.equip_icon_id("armor", int(p["armor"]["type"]), int(p["armor"]["bonus"])) if int(p["armor"]["type"]) >= 0 else 608, "[%d]" % game.armor_class()],
		[203, str(int(p.get("iq", 14))), View3D.equip_icon_id("sword", int(p["sword"]["type"]), int(p["sword"]["bonus"])), ""],
		[204, str(int(p.get("lk", 14))), 208, str(int(p["gold"]))],
	]
	for i in rows.size():
		var row: Array = rows[i]
		var y := 6.0 + i * 37.0
		var t1 := _icon(int(row[0]))
		if t1:
			b.draw_texture(t1, Vector2(6, y))
		b.draw_string(font, Vector2(42, y + 22), str(row[1]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.BLACK)
		var t2: Texture2D = null
		if int(row[2]) > 0:
			t2 = _icon(int(row[2]))
		if t2:
			b.draw_texture(t2, Vector2(66, y))
		b.draw_string(font, Vector2(104, y + 22), str(row[3]), HORIZONTAL_ALIGNMENT_LEFT, -1, 12, Color.BLACK)
	# worn shield, ring, helm and amulet (third column)
	var worn: Array = []
	if int(p["shield"]["type"]) >= 0:
		worn.append(_icon(View3D.equip_icon_id("shield", int(p["shield"]["type"]), int(p["shield"]["bonus"]))))
	for slot in ["ring", "helm", "amulet"]:
		if p.get(slot) != null:
			worn.append(_icon(int(ITEM_ICONS[slot])))
	for wi in worn.size():
		var wt: Texture2D = worn[wi]
		if wt:
			b.draw_texture(wt, Vector2(180, 6.0 + wi * 37.0))
	var info := "%s (%d/%d)" % [game.title(), int(p["xp"]), game.xp_for_next()]
	b.draw_string(font, Vector2(6, 182), info, HORIZONTAL_ALIGNMENT_LEFT, 257, 10, Color(0.25, 0.25, 0.25))
	_update_stat_spots.call_deferred()

## Invisible hot spots over the Player window's elements: a tooltip each, and a message when clicked.
func _update_stat_spots() -> void:
	var b := w_stats.body
	var holder := b.get_node_or_null("Spots")
	if holder == null:
		holder = Control.new()
		holder.name = "Spots"
		holder.mouse_filter = Control.MOUSE_FILTER_IGNORE
		b.add_child(holder)
	for c in holder.get_children():
		c.queue_free()
	if game.p.is_empty():
		return
	for sp in _stat_spots():
		var c := Control.new()
		c.position = (sp[0] as Rect2).position
		c.size = (sp[0] as Rect2).size
		c.tooltip_text = str(sp[1])
		c.mouse_filter = Control.MOUSE_FILTER_STOP
		var msg: String = sp[2]
		c.gui_input.connect(_stat_spot_input.bind(msg))
		holder.add_child(c)

## A stat tile puts its text in the Messages window; an equipment tile ("@kind") opens its "Select ..." dialog.
func _stat_spot_input(ev: InputEvent, msg: String) -> void:
	var mb := ev as InputEventMouseButton
	if mb == null or not mb.pressed or mb.button_index != MOUSE_BUTTON_LEFT:
		return
	if msg.begins_with("@"):
		if not busy and not mb.double_click:
			_inventory_dialog(msg.substr(1))
		return
	if not mb.double_click:
		_on_message(msg)

## [rect, tooltip, message] for each element.
func _stat_spots() -> Array:
	var p := game.p
	var out: Array = []
	var stats := [["Strength", "str", "Your main attack for hits and damage."], ["Dexterity", "dex", "Your main defense."],
		["IQ", "iq", "Improves spell hit chance and resistance."], ["Luck", "lk", "Improves chance of escaping traps and fatal enemy attacks."]]
	for i in 4:
		var y := 6.0 + i * 37.0
		var s := "%s (%d/25). %s" % [stats[i][0], int(p.get(stats[i][1], 12)), stats[i][2]]
		out.append([Rect2(6, y, 58, 32), s, s])
	var xp := "Experience: %d of %d needed for the next level." % [int(p["xp"]), game.xp_for_next()]
	out.append([Rect2(6, 172, 257, 14), xp, xp])
	var hp := "Hit points (%d/%d)." % [maxi(0, int(p["hp"])), int(p["maxhp"])]
	out.append([Rect2(66, 6, 110, 32), hp, hp])
	var ar: Dictionary = p["armor"]
	if int(ar["type"]) >= 0:
		var an: String = Data.s("armors", int(ar["type"]))
		var gain: int = 10 - int(GameState.ARMOR_BASE[clampi(int(ar["type"]), 0, 4)]) + int(ar["bonus"])
		out.append([Rect2(66, 43, 110, 32), "%s: improves your armor class by %d (armor class %d)." % [an.capitalize(), gain, game.armor_class()], "@armor"])
	else:
		out.append([Rect2(66, 43, 110, 32), "No armor (armor class %d)." % game.armor_class(), "@armor"])
	var sw: Dictionary = p["sword"]
	if int(sw["type"]) < 5:
		var w: Dictionary = sw.duplicate()
		w["kind"] = "sword"
		var sn: String = game.item_name(w, true)
		var sd: String = _describe(w, true)
		if sd == "":
			sd = "combat value %d, bonus %+d" % [game._orig_sword(), int(sw["bonus"])]
		out.append([Rect2(66, 80, 110, 32), "%s: %s" % [sn.capitalize(), sd], "@sword"])
	else:
		out.append([Rect2(66, 80, 110, 32), "Bare hands.", "@sword"])
	var gold := "Gold (%d pieces)." % int(p["gold"])
	out.append([Rect2(66, 117, 110, 32), gold, gold])
	# third column: shield, ring, helm, amulet (as drawn)
	var col: Array = []
	if int(p["shield"]["type"]) >= 0:
		var shd: Dictionary = (p["shield"] as Dictionary).duplicate()
		shd["kind"] = "shield"
		var gain2: int = int(p["shield"]["type"]) + 1 + int(p["shield"]["bonus"])
		var shn: String = game.item_name(shd, true)
		col.append(["%s: improves your armor class by %d." % [shn.capitalize(), gain2], "@shield"])
	for slot in ["ring", "helm", "amulet"]:
		if p.get(slot) != null:
			var it: Dictionary = (p[slot] as Dictionary).duplicate()
			it["kind"] = slot
			var nm: String = game.item_name(it)
			var d: String = _describe(it)
			col.append(["%s: %s" % [nm.capitalize(), d], "@" + slot])
	for wi in col.size():
		out.append([Rect2(180, 6.0 + wi * 37.0, 32, 32), col[wi][0], col[wi][1]])
	return out

const ITEM_ICONS := {"food": 1228, "wand": 1231, "potion": 1232, "scroll": 1233, "ring": 1234,
	"amulet": 1235, "helm": 1236, "gold": 1238}

func _item_icon(it: Dictionary) -> Texture2D:
	var k: String = it["kind"]
	if ITEM_ICONS.has(k):
		return _icon(int(ITEM_ICONS[k]))
	match k:
		"crystal": return _icon(9000 + clampi(int(it["type"]), 0, 3))
		"armor", "sword", "shield": return _icon(View3D.equip_icon_id(k, int(it["type"]), int(it.get("bonus", 0))))
	return null

## Inventory window, as in the original: one slot per kind of item you carry (with a count),
## laid out in a grid.  Double-click armor / a sword / a shield to be asked whether to use it;
## double-click any other slot to choose which one to use (or drop) from a list.
## Rations are not shown here - they are on the Rations menu (5 at most).
const INV_KINDS := ["sword", "armor", "shield", "potion", "scroll", "wand", "ring", "helm", "amulet"]

## Inventory tiles fill the window left to right, then top to bottom.
func _inv_cols() -> int:
	return maxi(1, int((w_inv.body.size.x - 10) / 42))

const EQUIP_KINDS := ["sword", "armor", "shield", "ring", "helm", "amulet"]

## One entry per kind of item: [kind, pack indices, worn item ({} if none)].  For equipment the entry is there
## when you wear one or carry one; crystals each have their own entry.
func _inv_slots() -> Array:
	var slots: Array = []
	for k in INV_KINDS:
		var items: Array = []
		for i in game.p["pack"].size():
			if game.p["pack"][i]["kind"] == k:
				items.append(i)
		var worn := {}
		if k in EQUIP_KINDS and _is_worn(k):
			worn = (game.p[k] as Dictionary).duplicate()
			worn["kind"] = k
		if items.size() > 0 or not worn.is_empty():
			slots.append([k, items, worn])
	for ci in game.p.get("crystals", []):
		slots.append(["crystal", [], {"kind": "crystal", "type": int(ci)}])
	return slots

func _draw_inventory() -> void:
	var b := w_inv.body
	if game.p.is_empty():
		return
	var font := get_theme_default_font()
	var slots := _inv_slots()
	for n in slots.size():
		var kind: String = slots[n][0]
		var items: Array = slots[n][1]
		var worn: Dictionary = slots[n][2]
		# the icon: what you wear, otherwise the first (best) one you carry
		var first: Dictionary = worn if not worn.is_empty() else game.p["pack"][items[0]]
		var t := _item_icon(first)
		var cols := _inv_cols()
		var pos := Vector2(10 + (n % cols) * 42, 8 + (n / cols) * 44)
		if t:
			b.draw_texture_rect(t, Rect2(pos, Vector2(32, 32)), false)
		var count: int = items.size() + (1 if (not worn.is_empty() and kind != "crystal") else 0)
		if count > 1:
			b.draw_string(font, pos + Vector2(26, 40), str(count), HORIZONTAL_ALIGNMENT_LEFT, -1, 10, Color.BLACK)

func _inventory_input(event: InputEvent) -> void:
	if _in_combat():
		return          # no re-equipping, potions or scrolls in the middle of a fight
	var mb := event as InputEventMouseButton
	if mb == null or not mb.pressed or mb.button_index != MOUSE_BUTTON_LEFT or busy:
		return
	var col := int((mb.position.x - 10) / 42)
	if col >= _inv_cols():
		return
	var row := int((mb.position.y - 8) / 44)
	var slots := _inv_slots()
	var n := row * _inv_cols() + col
	if col < 0 or n < 0 or n >= slots.size():
		return
	var kind: String = slots[n][0]
	var items: Array = slots[n][1]
	if kind == "crystal":
		var ct := int(slots[n][2]["type"])
		busy = true
		await modal("%s\n\nOne of the four crystals of the Jewel of Knowledge.  Carry all four to the Tower of Jewels to restore the Jewel." % Data.s("crystals", ct).capitalize(), ["Close"], _icon(9000 + ct))
		busy = false
		return
	_inventory_dialog(kind)               # a single click opens the "Select ..." dialog

## "You found ^0 ^1.  Do you want it?" (DITL 248) - or automatic with Auto Item Pickup.
func _offer_item(key: String, idx: int = 0) -> void:
	if not game.level()["items"].has(key):
		return
	var here_items: Array = game.items_at(key)
	idx = clampi(idx, 0, here_items.size() - 1)
	var it: Dictionary = here_items[idx]
	if game.can_carry(it) != "":
		await alert(game.can_carry(it))          # it stays on the floor
		return
	if it["kind"] == "gold":
		game.pick_up(key, idx)
		Sfx.play("gold")
		_refresh()
		await _timed_note("You picked up a pile of gold containing %d gold pieces." % int(it["amount"]), 3.0)
		return
	if auto_pickup:
		game.pick_up(key, idx)
		return
	var r = await modal("You found %s.  Do you want it?" % game.with_article(game.item_name(it)), ["Yes", "No"], _item_icon(it))
	if int(r) == 0:
		game.pick_up(key, idx)
	_refresh()

## Clicking an item on the floor ahead (hand cursor) offers it.
func _click_item_ahead() -> void:
	if busy or not playing or _in_combat():
		return
	var key: String = view3d.item_key
	if key == "":
		return
	if key.begins_with("fruit:"):
		var fparts := key.split(":")
		busy = true
		await _pick_fruit(str(fparts[1]), str(fparts[2]))
		busy = false
		_refresh()
		return
	if key.begins_with("box:"):
		var parts := key.split(":")
		busy = true
		await _magic_box(str(parts[1]), int(parts[2]))
		busy = false
		_refresh()
		return
	if key.begins_with("feature:"):
		var fk := key.substr(8)
		busy = true
		await _feature(game.feature_at(int(fk.split(",")[0]), int(fk.split(",")[1])), fk)
		busy = false
		_refresh()
		return
	if key.begins_with("crystal:"):
		var ck := key.substr(8)
		busy = true
		await _feature(LevelGen.F.CRYSTAL, ck)
		busy = false
		_refresh()
		return
	busy = true
	await _offer_item(key, view3d.item_index)
	busy = false

## A kill: the monster is replaced by the "KILLED IN BATTLE" stone (cicn 2002), then
## "You found N pieces of gold."
func _on_killed(x: int, y: int, gold: int, mname: String = "") -> void:
	pending_kill = {"x": x, "y": y, "gold": gold, "name": mname}

func _show_kill() -> void:
	var k := pending_kill
	pending_kill = {}
	view3d.tomb = _icon(2002)
	view3d.queue_redraw()
	await get_tree().create_timer(0.5).timeout
	# 1) the kill, with its sound as the dialog appears
	Sfx.play("monster_die")
	await alert("You have killed the %s and received %d pieces of gold." % [str(k.get("name", "monster")), int(k["gold"])])
	view3d.tomb = null
	view3d.queue_redraw()
	# 2) a level-up (fills your health) - or else 3) the healing problems
	if pending_levels.size() > 0:
		await _show_levelups()
	elif not _in_combat():
		await _heal_after_combat()

## After a fight with wounds, problems are asked until health is full (f2_1884 / DLOG 211).
## APPROX: each correct answer restores a quarter of maximum health.  "Stop Healing" ends it.
func _heal_after_combat() -> void:
	while int(game.p["hp"]) < int(game.p["maxhp"]) and playing:
		var res: int = await ask_problem("help yourself concentrate so your wounds will heal", -1, "Stop Healing")
		if res == -1:
			break
		if res == 1:
			var amt := maxi(1, int(ceil(int(game.p["maxhp"]) / 4.0)))
			game.p["hp"] = mini(int(game.p["maxhp"]), int(game.p["hp"]) + amt)
			_on_message("Your wounds heal (%d / %d)." % [int(game.p["hp"]), int(game.p["maxhp"])])
			_refresh()

# ================================================================= menus
## During a game, ask before leaving it.
func _confirm_leave(what: String) -> bool:
	if not playing:
		return true
	busy = true
	var r = await modal("Are you sure you want to %s?  Anything you haven't saved in this game will be lost." % what, ["Yes", "No"])
	busy = false
	return int(r) == 0

## Quit: during a game, offer to save it first.
func _quit() -> void:
	if playing:
		busy = true
		var r = await modal("Do you want to save your game before quitting?", ["Save", "Don't Save", "Cancel"])
		busy = false
		if int(r) == 2:
			return
		if int(r) == 0:
			game.save()
	get_tree().quit()

# ---------------------------------------------------------------- remembered preferences
var _window_defaults := {}          # name -> [position, body size] as built

func _named_windows() -> Dictionary:
	return {"player": w_stats, "view": w_view, "overhead": w_over, "inventory": w_inv,
		"messages": w_msg, "spells": w_spells, "wands": w_weapon}

## Remembers where the windows were first placed, applies the saved arrangement and toggles, and saves
## again whenever a window is moved or resized.
## Tooltips can be switched off: every control keeps its text in metadata, and new controls are caught as
## they appear.
var tooltips_on := true
var debug_menu_on := false         # Options > Show Debug Menu (remembered; hidden by default)

func _apply_tooltips(n: Node) -> void:
	if n is Control:
		var c := n as Control
		if not tooltips_on and c.tooltip_text != "":
			c.set_meta("tip", c.tooltip_text)
			c.tooltip_text = ""
		elif tooltips_on and c.has_meta("tip") and c.tooltip_text == "":
			c.tooltip_text = str(c.get_meta("tip"))
		if n is ItemList:
			var il := n as ItemList
			for i in il.item_count:
				il.set_item_tooltip_enabled(i, tooltips_on)
	for ch in n.get_children():
		_apply_tooltips(ch)

func _on_node_added_tips(n: Node) -> void:
	if not tooltips_on and n is Control:
		_apply_tooltips.call_deferred(n)

func _setup_ui_prefs() -> void:
	var ws := _named_windows()
	for nm in ws.keys():
		var w: MacWindow = ws[nm]
		_window_defaults[nm] = [w.position, w.body.size]
	var saved: Dictionary = game.prefs_ui.get("windows", {})
	for nm in saved.keys():
		if not ws.has(nm):
			continue
		var w2: MacWindow = ws[nm]
		var a: Array = saved[nm]
		if a.size() >= 4:
			w2.position = Vector2(float(a[0]), float(a[1]))
			if w2.resizable:
				w2.set_body_size(Vector2(float(a[2]), float(a[3])))
	if game.prefs_ui.has("auto_pickup"):
		auto_pickup = bool(game.prefs_ui["auto_pickup"])
	if game.prefs_ui.has("sounds"):
		Sfx.enabled = bool(game.prefs_ui["sounds"])
	if game.prefs_ui.has("overhead_visible"):
		w_over.visible = bool(game.prefs_ui["overhead_visible"])
	if game.prefs_ui.has("messages_visible"):
		w_msg.visible = bool(game.prefs_ui["messages_visible"])
	if game.prefs_ui.has("tooltips"):
		tooltips_on = bool(game.prefs_ui["tooltips"])
	debug_menu_on = bool(game.prefs_ui.get("debug_menu", false))
	menubar.set_menu_visible("Debug", debug_menu_on)
	for nm in ws.keys():
		var w3: MacWindow = ws[nm]
		w3.moved.connect(_save_ui_prefs)
		if w3.resizable:
			w3.body_resized.connect(func(_s): _save_ui_prefs())
	_refresh_options_menu()

func _save_ui_prefs() -> void:
	var wins := {}
	var ws := _named_windows()
	for nm in ws.keys():
		var w: MacWindow = ws[nm]
		wins[nm] = [w.position.x, w.position.y, w.body.size.x, w.body.size.y]
	game.prefs_ui["windows"] = wins
	game.prefs_ui["auto_pickup"] = auto_pickup
	game.prefs_ui["sounds"] = Sfx.enabled
	game.prefs_ui["overhead_visible"] = w_over.visible
	game.prefs_ui["messages_visible"] = w_msg.visible
	game.prefs_ui["tooltips"] = tooltips_on
	game.prefs_ui["debug_menu"] = debug_menu_on
	game.save_prefs()

func _reset_windows() -> void:
	var ws := _named_windows()
	for nm in ws.keys():
		if not _window_defaults.has(nm):
			continue
		var w: MacWindow = ws[nm]
		var d: Array = _window_defaults[nm]
		w.position = d[0]
		if w.resizable:
			w.set_body_size(d[1])
	w_over.visible = true             # hidden windows come back too
	w_msg.visible = true
	_fit_side_windows()
	_refresh_options_menu()
	_save_ui_prefs()

func _menu_action(menu: String, idx: int) -> void:
	if not _menus_live:
		return
	if busy:
		return
	match menu:
		"Command":
			match idx:
				0:
					if await _confirm_leave("start a new game"):
						_title_action("new")
				1:
					if await _confirm_leave("start a game with the default player"):
						_title_action("default")
				2:
					if playing:
						busy = true
						var sv = await modal("Save your current game?  It will replace the game saved before.", ["Save", "Cancel"])
						busy = false
						if int(sv) == 0:
							game.save()
							_on_message("Your game has been saved.")
				3:
					if await _confirm_leave("resume your saved game"):
						_title_action("resume")
				4:
					if playing and await _confirm_leave("exit to the main menu"):
						game.end_fight()
						_show_title()
				6: await _quit()
		"Inventory":
			var kinds := ["potion", "scroll", "wand", "armor", "sword", "shield", "ring", "helm", "amulet"]
			_inventory_dialog(str(kinds[idx]))
		"Options":
			match idx:
				0: _problem_options()
				1:
					auto_pickup = not auto_pickup
					_save_ui_prefs()
					_refresh_options_menu()
				2:
					Sfx.enabled = not Sfx.enabled
					if not Sfx.enabled:
						Sfx.stop_all()
					_save_ui_prefs()
					_refresh_options_menu()
				4:
					w_over.visible = not w_over.visible
					_save_ui_prefs()
					_refresh_options_menu()
				5:
					w_msg.visible = not w_msg.visible
					_save_ui_prefs()
					_refresh_options_menu()
				6:
					tooltips_on = not tooltips_on
					_apply_tooltips(get_tree().root)
					_save_ui_prefs()
					_refresh_options_menu()
				7:
					debug_menu_on = not debug_menu_on
					menubar.set_menu_visible("Debug", debug_menu_on)
					_save_ui_prefs()
					_refresh_options_menu()
				9:
					busy = true
					var rr = await modal("Reset all windows to their original positions?  Your current window arrangement will be replaced.", ["Reset", "Cancel"])
					busy = false
					if int(rr) == 0:
						_reset_windows()
		"Status":
			if idx == 0:
				await alert("%s, you are a %s.\n\nExperience: %d of %d needed for the next level.\nLevel %d of the castle.  Crystals found: %d of 4." % [game.p["name"], game.title(), int(game.p["xp"]), game.xp_for_next(), game.depth, game.p["crystals"].size()], _icon(2005))
			else:
				await alert(_crystal_hint())
		"Rations":
			if game.eat_ration():
				_after_turn()
		"Debug":
			if idx == 0:
				await _dialog_proof()
			elif idx == 2:
				await _item_spawn()
			elif idx == 3:
				await _poi_spawn()
			elif idx == 4:
				await _enemy_spawn()
			elif idx == 6:
				await _go_to_floor()
			elif idx == 8:
				game.combat_enabled = not game.combat_enabled
				menubar.set_item_checked("Debug", 8, game.combat_enabled)
				if not game.combat_enabled:
					game.end_fight()
				_on_message("Combat is now %s." % ("on" if game.combat_enabled else "off"))
				_refresh()
			elif idx == 7:
				if playing and not game.levels.is_empty():
					game.map_level()             # the scroll of mapping's effect (f2_6b24)
					_on_message("The whole map of this level is revealed.")
					_refresh()
			elif idx == 9:
				if playing:
					busy = true
					var ok: bool = await ask_problem("practise")
					busy = false
					_on_message("Correct!" if ok else "That problem was not solved.")
			elif idx == 10:
				_print_player_stats()
		"Help":
			if idx == 0:
				await _about_box()
			else:
				await _help()

const NOUNS := {"potion": "potion", "scroll": "scroll", "wand": "wand", "armor": "suit of armor",
	"sword": "sword", "shield": "shield", "ring": "ring", "helm": "helm", "amulet": "amulet"}
const VERBS := {"potion": "Drink It", "scroll": "Read It", "wand": "Shoot It"}

func _inventory_dialog(kind: String) -> void:
	if not playing or (_in_combat() and kind != "wand"):
		return
	if kind in EQUIP_KINDS:
		await _equipment_dialog(kind)
		return
	var noun: String = NOUNS[kind]
	var sel := 0                  # after a drop, the item now in the same place is selected
	var first := true
	while true:
		var idxs: Array = []
		var names: Array = []
		var tips: Array = []
		for i in game.p["pack"].size():
			if game.p["pack"][i]["kind"] == kind:
				idxs.append(i)
				names.append(game.item_name(game.p["pack"][i]))
				tips.append(_describe(game.p["pack"][i]))
		if names.is_empty():
			if first:
				await alert("You aren't carrying any %ss." % noun.replace("suit of ", ""))
			return                    # (after dropping the last one the dialog simply closes)
		first = false
		busy = true
		var buttons: Array = [VERBS.get(kind, "Use It"), "Drop It", "Cancel"]
		if kind == "wand":
			buttons = ["Drop It", "Cancel"]
		var r: Array = await choice_dialog("Select a %s." % noun, names, buttons, tips, mini(sel, names.size() - 1))
		busy = false
		if kind == "wand":
			r[0] = 1 if int(r[0]) == 0 else 2          # Drop It / Cancel
		if int(r[0]) == 2 or int(r[1]) < 0:
			return
		var i: int = idxs[int(r[1])]
		if int(r[0]) == 0:
			_use_item(i)
			return
		# Drop: the item goes down and the list comes back without it
		game.drop_item(i)
		_refresh()
		sel = int(r[1])

## Select a sword / armor / shield / ring / helm / amulet: what you wear first (and selected), then the
## ones you carry, then "none".  Equip / Drop / Cancel - Drop is unavailable for "none".
func _equipment_dialog(kind: String) -> void:
	var noun: String = NOUNS[kind]
	var sel := -1                 # after a drop, the item now in the same place is selected
	while true:
		# entries: [item, "worn" or pack index]; swords, armor and shields from strongest to weakest
		var entries: Array = []
		if _is_worn(kind):
			var w: Dictionary = (game.p[kind] as Dictionary).duplicate()
			w["kind"] = kind
			entries.append([w, "worn"])
		for i in game.p["pack"].size():
			if game.p["pack"][i]["kind"] == kind:
				entries.append([game.p["pack"][i], i])
		if sel >= 0 and entries.is_empty():
			return                    # the last one was dropped: the dialog closes
		if kind in ["sword", "armor", "shield"]:
			entries.sort_custom(func(a, b): return game._quality(a[0]) > game._quality(b[0]))
		var names: Array = []
		var tips: Array = []
		var picks: Array = []           # "worn", a pack index, or "none"
		var worn_i := -1
		for e in entries:
			names.append(game.item_name(e[0]))
			tips.append(_describe(e[0]))
			picks.append(e[1])
			if typeof(e[1]) == TYPE_STRING:
				worn_i = picks.size() - 1
		names.append("none")
		tips.append("")
		picks.append("none")
		var none_i := names.size() - 1
		var start_i: int = (worn_i if worn_i >= 0 else none_i) if sel < 0 else mini(sel, none_i - 1)
		busy = true
		var r: Array = await choice_dialog("Select a %s." % noun, names, ["Equip", "Drop", "Cancel"], tips, start_i, {1: [none_i]})
		busy = false
		if int(r[0]) == 2 or int(r[1]) < 0:
			return
		var pick = picks[int(r[1])]
		if int(r[0]) == 0:                    # Equip
			if typeof(pick) == TYPE_STRING and pick == "none":
				if _is_worn(kind):
					game.unequip(kind)
			elif typeof(pick) == TYPE_INT:
				_use_item(int(pick))
			_refresh()
			return
		# Drop: it goes down and the list comes back without it
		if typeof(pick) == TYPE_STRING and pick == "worn":
			game.drop_equipped(kind)          # the worn one goes down; the slot becomes "none"
		elif typeof(pick) == TYPE_INT:
			game.drop_item(int(pick))
		_refresh()
		sel = int(r[1])

func _is_worn(kind: String) -> bool:
	var cur = game.p.get(kind)
	if cur == null:
		return false
	if kind == "sword":
		return int(cur["type"]) < 5
	if kind == "armor" or kind == "shield":
		return int(cur["type"]) >= 0
	return true

## Options > Set Problem Options (layout from the playthrough).
func _problem_options() -> void:
	busy = true
	var o: Dictionary = game.options
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(180, 90, 440, 428))
	ov.add_child(panel)
	var l := MacUI.label("Set the various options you would like the game to use for problems you'll face.")
	l.position = Vector2(18, 4)
	l.size = Vector2(390, 34)
	panel.add_child(l)
	var cols: Array = [
		["Math Problems", [["Counting", "counting"], ["Addition", "math_add"], ["Subtraction", "math_sub"], ["Multiplication", "math_mul"], ["Division", "math_div"], ["Deduction", "deduction"], ["Counting coins", "coins"]]],
		["Word Jumbles", [["4 letter words", "words4"], ["5 letter words", "words5"], ["6 letter words", "words6"]]],
		["Multiple Choice", [["U.S. geography", "capitals"], ["Word Match", "synonyms"]]],
	]
	var boxes := {}
	for c in cols.size():
		var hdr := MacUI.label(str(cols[c][0]))
		hdr.position = Vector2(20 + c * 125, 48)
		hdr.size = Vector2(120, 18)
		panel.add_child(hdr)
		var opts: Array = cols[c][1]
		for k in opts.size():
			var cb := CheckBox.new()
			cb.text = str(opts[k][0])
			cb.position = Vector2(18 + c * 125, 66 + k * 21)
			cb.button_pressed = bool(o.get(str(opts[k][1]), true))
			panel.add_child(cb)
			boxes[str(opts[k][1])] = cb
	_dlg_button(panel, "Select All", Rect2(300, 170, 100, 22), 10)
	_dlg_button(panel, "Clear All", Rect2(300, 206, 100, 22), 11)
	_dlg_button(panel, "Defaults", Rect2(300, 242, 100, 22), 12)
	# the problem limits, right on this dialog
	var lim_hdr := MacUI.label("Problem Limits")
	lim_hdr.position = Vector2(20, 272)
	lim_hdr.size = Vector2(200, 18)
	panel.add_child(lim_hdr)
	var fields := {}
	var lims := [["Largest sum in addition problems:", "max_sum", 294], ["Largest multiplier in multiplication problems:", "max_mult", 322],
		["Largest number to count:", "max_count", 350]]
	for lm in lims:
		var ll := MacUI.label(str(lm[0]))
		ll.position = Vector2(20, float(lm[2]) + 3)
		ll.size = Vector2(300, 18)
		panel.add_child(ll)
		var le := LineEdit.new()
		le.position = Vector2(330, float(lm[2]))
		le.size = Vector2(70, 22)
		le.text = str(int(o.get(str(lm[1]), GameState.DEFAULT_OPTIONS.get(str(lm[1]), 20))))
		panel.add_child(le)
		fields[str(lm[1])] = le
	var ok_btn := _dlg_button(panel, "OK", Rect2(270, 390, 64, 22), 0)
	MacUI.default_button(ok_btn)
	ok_btn.grab_focus.call_deferred()
	_dlg_button(panel, "Cancel", Rect2(346, 390, 72, 22), 1)
	_pad(panel)
	while true:
		var r = await _wait_modal(ov)
		if int(r) == 10 or int(r) == 11:
			for cb in boxes.values():
				var box: CheckBox = cb
				box.button_pressed = int(r) == 10
			continue
		if int(r) == 12:
			# Defaults: every problem type on, the original limits
			for key in boxes.keys():
				(boxes[key] as CheckBox).button_pressed = bool(GameState.DEFAULT_OPTIONS.get(key, true))
			for key in fields.keys():
				(fields[key] as LineEdit).text = str(int(GameState.DEFAULT_OPTIONS.get(key, 20)))
			continue
		if int(r) == 0:
			var any_on := false
			for kb in boxes.values():
				if (kb as CheckBox).button_pressed:
					any_on = true
			# (no problem types at all is allowed: anything asking a problem then just lets you through)
			for key in boxes.keys():
				var box2: CheckBox = boxes[key]
				o[key] = box2.button_pressed
			var ms := (fields["max_sum"] as LineEdit).text.strip_edges()
			if ms.is_valid_int():
				o["max_sum"] = maxi(2, int(ms))
			var mm2 := (fields["max_mult"] as LineEdit).text.strip_edges()
			if mm2.is_valid_int():
				o["max_mult"] = maxi(1, int(mm2))
			var mc2 := (fields["max_count"] as LineEdit).text.strip_edges()
			if mc2.is_valid_int():
				o["max_count"] = maxi(2, int(mc2))
			o["words"] = bool(o["words4"]) or bool(o["words5"]) or bool(o["words6"])
			game.save_prefs()
		break
	ov.queue_free()
	busy = false

func _dlg_button(parent: Control, text: String, r: Rect2, result: int) -> Button:
	var b := Button.new()
	b.text = text
	b.position = r.position
	b.size = r.size
	b.pressed.connect(_press.bind(b, result))
	parent.add_child(b)
	return b

func _sound_control() -> void:
	busy = true
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(290, 160, 220, 100))
	ov.add_child(panel)
	var a := CheckBox.new()
	a.text = "Game Sounds On"
	a.position = Vector2(20, 14)
	a.button_pressed = Sfx.enabled
	panel.add_child(a)
	var m := CheckBox.new()
	m.text = "Background Music On"
	m.position = Vector2(20, 36)
	m.button_pressed = Sfx.music_enabled
	panel.add_child(m)
	MacUI.default_button(_dlg_button(panel, "OK", Rect2(80, 66, 56, 20), 0))
	_dlg_button(panel, "Cancel", Rect2(146, 66, 60, 20), 1)
	_pad(panel)
	var r = await _wait_modal(ov)
	if int(r) == 0:
		Sfx.enabled = a.button_pressed
		Sfx.music_enabled = m.button_pressed
	ov.queue_free()
	busy = false

func _crystal_hint() -> String:
	for i in 4:
		if not game.p["crystals"].has(i):
			var lv: int = game.crystal_levels[i]
			var diff: int = absi(lv - game.depth)
			if diff == 0:
				return "%s lies on this level." % Data.s("crystals", i).capitalize()
			return "%s lies %s %s %s." % [Data.s("crystals", i).capitalize(), str(diff) if diff <= 2 else "more than 2", "level" if diff == 1 else "levels", "above you" if lv > game.depth else "below you"]
	return "You have found all four crystals.  Carry them to the Tower of Jewels."

# ================================================================= input
const CMD_KEYS := {KEY_N: ["Command", 0], KEY_D: ["Command", 1], KEY_S: ["Command", 2], KEY_R: ["Command", 3], KEY_Q: ["Command", 6],
	KEY_P: ["Inventory", 0], KEY_M: ["Inventory", 1],
	KEY_G: ["Options", 0], KEY_T: ["Options", 1], KEY_H: ["Options", 2]}

func _unhandled_input(event: InputEvent) -> void:
	var ke := event as InputEventKey
	if ke == null or not ke.pressed:
		return
	if ke.ctrl_pressed or ke.meta_pressed:
		if CMD_KEYS.has(ke.keycode) and _menus_live:
			var a: Array = CMD_KEYS[ke.keycode]
			if playing or str(a[0]) != "Inventory":
				_menu_action(str(a[0]), int(a[1]))
			get_viewport().set_input_as_handled()
		return
	if busy or not playing or ke.echo or Time.get_ticks_msec() < _nav_ready_at:
		return
	var dir := 0
	match ke.keycode:
		KEY_SPACE:
			var hk := "%d,%d" % [int(game.p["x"]), int(game.p["y"])]
			if not _in_combat() and game.items_at(hk).size() > 0:
				busy = true
				await _offer_item(hk, 0)
				busy = false
				_refresh()
		KEY_SHIFT:
			if _in_combat():
				_attack_ahead()             # either Shift key strikes the monster you are fighting
		KEY_R:
			if _in_combat():
				_run_away()
		KEY_UP, KEY_W, KEY_KP_8:
			_nav("forward")
		KEY_LEFT, KEY_A, KEY_KP_4:
			_nav("left")
		KEY_RIGHT, KEY_D, KEY_KP_6:
			_nav("right")
	if dir != 0:
		get_viewport().set_input_as_handled()
		_do_move(dir)

## 3D view hotspots / arrow keys: move forward, turn left, turn right, turn around.
func _in_combat() -> bool:
	if not game.engaged_monster().is_empty():
		return true
	for m in _adjacent_awake_monsters():
		if not bool(m.get("fled", false)):
			return true
	return false

## If a monster is attacking but not in front, turn to face it so it appears in the 3D view
## (with the RUN!! button).  Returns true if the facing changed.
func _face_attacker() -> bool:
	if not game.monster_here().is_empty():
		return false                  # it is on your own space: no need to turn
	var eng := game.engaged_monster()
	var targets: Array = [eng] if not eng.is_empty() else _adjacent_awake_monsters()
	var d: Vector2i = GameState.DIRS[int(game.p["dir"])]
	for t in targets:
		if int(t["x"]) == int(game.p["x"]) + d.x and int(t["y"]) == int(game.p["y"]) + d.y:
			return false          # already facing the opponent
	for m in targets:
		for dd in range(1, 5):
			var dv: Vector2i = GameState.DIRS[dd]
			if int(game.p["x"]) + dv.x == int(m["x"]) and int(game.p["y"]) + dv.y == int(m["y"]):
				game.p["dir"] = dd
				_refresh()
				return true
	return false

func _nav(kind: String) -> void:
	if busy or not playing or Time.get_ticks_msec() < _nav_ready_at:
		return
	if _in_combat():
		if not _face_attacker():
			if kind == "forward":
				_attack_ahead()
			else:
				_on_message("You are fighting!  Attack the monster, or press RUN!! to flee.")
		return
	var d := int(game.p["dir"])
	match kind:
		"forward":
			_do_move(d)
			return
		"left":
			d = 4 if d == 1 else d - 1
		"right":
			d = 1 if d == 4 else d + 1
		"back":
			d = ((d + 1) % 4) + 1
	game.p["dir"] = d
	_refresh()

var _hit_frames: Array = []         # the hit pictures that exist among 300-327

## A blow that lands flashes the hit picture (cicn 2000) over the monster.
func _on_player_hit(_m: Dictionary) -> void:
	view3d.hit_flash = _icon(2000)
	view3d.queue_redraw()
	await get_tree().create_timer(0.15).timeout
	view3d.hit_flash = null
	view3d.queue_redraw()

var _monster_landed := false

func _on_monster_hit(_m: Dictionary) -> void:
	_monster_landed = true

func _on_monster_attacked(_m: Dictionary) -> void:
	_monster_landed = false
	view3d.attack_zoom = 16.0
	view3d.queue_redraw()
	await get_tree().create_timer(0.25).timeout
	view3d.attack_zoom = 0.0
	view3d.queue_redraw()
	if _monster_landed:
		# the blow landed: a brief dither over the view
		view3d.dither = true
		view3d.queue_redraw()
		await get_tree().create_timer(0.08).timeout
		view3d.dither = false
		view3d.queue_redraw()

## While you stand at the fountain, its water sound (23580) loops.
var _fountain_on := false

func _fountain_sound() -> void:
	var here_f := LevelGen.F.NONE
	if playing and not game.levels.is_empty():
		here_f = game.feature_at(int(game.p["x"]), int(game.p["y"]))
	if here_f == LevelGen.F.FOUNTAIN and not _fountain_on:
		_fountain_on = true
		Sfx.loop(23580)
	elif here_f != LevelGen.F.FOUNTAIN and _fountain_on:
		_fountain_on = false
		Sfx.stop_long()

func _on_popup(t: String) -> void:
	# never opened on the spot: a pop-up raised in the middle of a move (a hunger warning, say) would open
	# alongside the dialog the move itself brings up (a monster met, a death) - it waits for a quiet moment
	pending_popups.append(t)
	_flush_popups_when_idle.call_deferred()

var _popup_flush_waiting := false

## Shows queued pop-ups once no action is running and no dialog is open.
func _flush_popups_when_idle() -> void:
	if _popup_flush_waiting:
		return
	_popup_flush_waiting = true
	while busy or _open_dialogs > 0 or game.dead():
		await get_tree().process_frame
		if not playing:
			_popup_flush_waiting = false
			return
	_popup_flush_waiting = false
	if pending_popups.is_empty():
		return
	busy = true
	while pending_popups.size() > 0:
		await alert(str(pending_popups.pop_front()))
	busy = false

## Wands are used only in a fight; one shot each.  An unidentified wand says what it is first.
func _fire_wand(i: int) -> void:
	if not _in_combat():
		await alert("You can only use a wand during combat.")
		return
	var w: Dictionary = game.p["pack"][i]
	if not game.is_known(w):
		game.identify("wand", int(w["type"]))
		busy = true
		await alert("This is %s wand." % game.with_article(Data.s("wands", int(w["type"]))))
		busy = false
	game.zap(i)
	if pending_kill.size() > 0:
		busy = true
		await _show_kill()
		busy = false
	_after_turn()

## Typed problems in the gold quiz's style: arithmetic right-aligned in the middle of the dialog over a rule,
## with the answer box (as wide as the rule) beneath; a word jumble starts where the answer box starts.
## Returns [button, typed text].
func _typed_problem(intro: String, pr: Dictionary, buttons: Array) -> Array:
	var ov := _overlay()
	var W := 360.0
	var H := 210.0
	var panel := MacUI.dialog_panel(Rect2(0, 0, W, H))
	ov.add_child(panel)
	var il := MacUI.label(intro)
	il.position = Vector2(10, 8)
	il.size = Vector2(W - 20, 40)
	panel.add_child(il)
	var le := LineEdit.new()
	var q := str(pr["question"])
	var y := 56.0
	if str(pr["kind"]) == "math":
		var lines: Array = []
		for ln in q.split("\n"):
			var s := str(ln).strip_edges()
			# skip the problem's own separator line (hyphens, underscores or dashes): the solid rule replaces it
			var only_dashes := true
			for ch in s:
				if not ch in ["-", "_", "—", "–", "─", " "]:
					only_dashes = false
					break
			if s != "" and not only_dashes:
				lines.append(s)
		var bw := 80.0
		var bx := (W - bw) / 2.0
		for s in lines:
			var l := MacUI.label(s, 14)
			l.autowrap_mode = TextServer.AUTOWRAP_OFF
			l.horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
			l.position = Vector2(bx, y)
			l.size = Vector2(bw, 20)
			panel.add_child(l)
			y += 22.0
		var rule := ColorRect.new()
		rule.color = Color.BLACK
		rule.position = Vector2(bx, y + 2)
		rule.size = Vector2(bw, 2)
		panel.add_child(rule)
		le.position = Vector2(bx, y + 8)
		le.add_theme_constant_override("minimum_character_width", 0)
		le.add_theme_stylebox_override("focus", StyleBoxEmpty.new())
		le.custom_minimum_size = Vector2(bw, 22)
		le.size = Vector2(bw, 22)
		le.alignment = HORIZONTAL_ALIGNMENT_RIGHT
	else:
		var ew := 160.0
		var ex := (W - ew) / 2.0
		var wl := MacUI.label(q, 16)
		wl.autowrap_mode = TextServer.AUTOWRAP_OFF
		wl.position = Vector2(ex, y + 4)
		wl.size = Vector2(W - ex - 10, 24)
		panel.add_child(wl)
		le.position = Vector2(ex, y + 38)
		le.custom_minimum_size = Vector2(ew, 22)
		le.size = Vector2(ew, 22)
	panel.add_child(le)
	le.text_submitted.connect(func(_t): modal_done.emit(0))
	var hint_n := 0
	var bx2 := W - 16.0
	for i in range(buttons.size() - 1, -1, -1):
		var b := _mac_button(str(buttons[i]), i, i == 0)
		b.size = b.custom_minimum_size
		bx2 -= b.size.x
		b.position = Vector2(bx2, H - 38)
		bx2 -= 10.0
		panel.add_child(b)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	_keep_typing(le)
	_refocus.call_deferred(le)
	var r = await _wait_modal(ov)
	# Hint puts the first letters straight into the answer box (one more each time) and keeps the dialog open
	while int(r) >= 0 and int(r) < buttons.size() and str(buttons[int(r)]) == "Hint":
		hint_n = mini(hint_n + 1, str(pr.get("answer", "")).length())
		le.text = str(pr.get("answer", "")).substr(0, hint_n)
		le.caret_column = le.text.length()
		_refocus.call_deferred(le)
		r = await _wait_modal(ov)
	var txt := le.text
	ov.queue_free()
	return [int(r), txt]

## Wimps, clumsiness, lose hit points, vulnerability, bad luck, stupidity, decrease level, cowards, terror.
const HARMFUL_POTIONS := [1, 3, 6, 8, 10, 12, 13, 16, 18]

## Counting coins (DITL 1001): click coins to add them until the total is exactly the amount asked for.
## Going past it fails.  Returns 1 (solved), 0 (wrong) or -1 (cancelled).
func _money_dialog(intro: String, pr: Dictionary) -> int:
	var target := int(pr.get("target", 0))
	var ov := _overlay()
	var W := 520.0
	var H := 230.0
	var panel := MacUI.dialog_panel(Rect2(0, 0, W, H))
	ov.add_child(panel)
	var il := MacUI.label(intro)
	il.position = Vector2(14, 8)
	il.size = Vector2(W - 28, 44)
	panel.add_child(il)
	var sel_l := MacUI.label("Selected:  0 cents")
	sel_l.position = Vector2(14, 60)
	sel_l.size = Vector2(240, 20)
	panel.add_child(sel_l)
	var picked := MacUI.label("")
	picked.position = Vector2(14, 84)
	picked.size = Vector2(W - 28, 40)
	panel.add_child(picked)
	var coins := [[1, "Penny"], [5, "Nickel"], [10, "Dime"], [25, "Quarter"]]
	var bx := 14.0
	for i in coins.size():
		var cb := _mac_button("%s (%d¢)" % [str(coins[i][1]), int(coins[i][0])], 10 + i, false)
		cb.size = cb.custom_minimum_size
		cb.position = Vector2(bx, 140)
		bx += cb.size.x + 8.0
		panel.add_child(cb)
	var cancel := _mac_button("Cancel", -1, false)
	cancel.size = cancel.custom_minimum_size
	cancel.position = Vector2(W - 16 - cancel.size.x, H - 40)
	panel.add_child(cancel)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	var total := 0
	var chosen: Array = []
	var result := -1
	while true:
		var r = await _wait_modal(ov)
		if int(r) < 10:
			result = -1
			break
		var v: int = int(coins[int(r) - 10][0])
		total += v
		chosen.append("%d¢" % v)
		sel_l.text = "Selected:  %d cents" % total
		picked.text = "  ".join(PackedStringArray(chosen))
		if total == target:
			result = 1
			break
		if total > target:
			result = 0
			break
	await get_tree().create_timer(0.4).timeout
	ov.queue_free()
	return result

## A message box without buttons that closes by itself after a few seconds.
func _timed_note(text: String, secs: float) -> void:
	var ov := _overlay()
	var sh := _dialog_shell(ov)
	var panel: Panel = sh[0]
	var mc: MarginContainer = sh[1]
	var l := MacUI.label(text)
	l.custom_minimum_size = Vector2(300, 0)
	mc.add_child(l)
	await _fit_shell(panel, mc)
	await get_tree().create_timer(secs).timeout
	ov.queue_free()

## The door fills the view, slides open, a short pause, then you pass through (a creature just
## behind it steps back first; the fight then starts normally).
func _door_transition(x: int, y: int) -> void:
	Sfx.play_id([23512, 23521, 23513, 23522, 23591][game.rng.randi_range(0, 4)])
	_refresh()
	var t0 := Time.get_ticks_msec()
	while Time.get_ticks_msec() - t0 < 400:
		view3d.door_t = float(Time.get_ticks_msec() - t0) / 400.0
		view3d.queue_redraw()
		await get_tree().process_frame
	await get_tree().create_timer(0.25).timeout
	view3d.door_t = 0.0
	if not game.pass_door(x, y):
		_on_message("Something blocks the doorway.")
	# (no auto pickup straight after a door: items on the far side are taken by stepping or clicking)
	_refresh()

func _do_move(dir: int) -> void:
	if _in_combat():
		# moving into the monster attacks it; any other move is refused while fighting
		var d: Vector2i = GameState.DIRS[dir]
		if game.monster_at(int(game.p["x"]) + d.x, int(game.p["y"]) + d.y).is_empty():
			_on_message("You are fighting!  Attack the monster, or press RUN!! to flee.")
			return
	var r: Dictionary = game.try_move(dir)
	match str(r["type"]):
		"door":
			busy = true
			await _door_transition(int(r["x"]), int(r["y"]))
			busy = false
		"blocked":
			Sfx.bump()                  # bumping into a wall
			_refresh()
			return
		"turn":
			if r.has("item_key") and auto_pickup:
				game.pick_up(str(r["item_key"]), 0, true)
		"locked":
			busy = true
			if await ask_problem("unlock and open the door"):
				game.unlock(int(r["x"]), int(r["y"]))
				if pending_levels.size() > 0:
					await _show_levelups()      # level up first, then step through the door
				await _door_transition(int(r["x"]), int(r["y"]))
			busy = false
		"feature":
			busy = true
			if auto_pickup and game.level()["items"].has(str(r["key"])):
				game.pick_up(str(r["key"]), 0, true)
			if not (int(r["feature"]) in View3D.CLICK_FEATURES):     # vending machine, wizard, fountain: click them
				await _feature(int(r["feature"]), str(r["key"]))
			busy = false
		"stairs_down":
			busy = true
			# the way to the next level leads UP through the castle (level 1 -> 2 climbs)
			var a = await modal("There is a staircase leading up.  Go up to level %d?" % (game.depth + 1), ["Go Up", "Stay"], Data.tex("art_2000"))
			if int(a) == 0:
				Sfx.play("step_stairs")
				game.enter_level(game.depth + 1, false)
			busy = false
		"stairs_up":
			busy = true
			var a2 = await modal("There is a staircase leading down.  Go down to level %d?" % (game.depth - 1), ["Go Down", "Stay"], Data.tex("art_2001"))
			if int(a2) == 0:
				Sfx.play("step_stairs")
				game.enter_level(game.depth - 1, true)
			busy = false
	_after_turn()

func _after_turn() -> void:
	if game.won:
		return
	var before := _adjacent_awake_monsters()
	_refresh()
	var announced: bool = await _announce_new_monster()
	game.end_turn()
	_face_attacker()
	_refresh()
	while pending_notes.size() > 0:
		busy = true
		await _timed_note(str(pending_notes.pop_front()), 3.0)
		busy = false
	while pending_popups.size() > 0:
		busy = true
		await alert(str(pending_popups.pop_front()))
		busy = false
	if pending_levels.size() > 0:
		busy = true
		await _show_levelups()
		busy = false
	# "You are being attacked by a goblin.  Prepare to defend yourself." (as in the playthrough)
	var eng := game.engaged_monster()
	for m in ([eng] if not eng.is_empty() and not announced else []):
		if not before.has(m):
			busy = true
			var md: Dictionary = Data.monsters()[int(m["idx"])]
			# turn to face the attacker so it stands in the 3D view
			for dd in range(1, 5):
				var dv: Vector2i = GameState.DIRS[dd]
				if int(game.p["x"]) + dv.x == int(m["x"]) and int(game.p["y"]) + dv.y == int(m["y"]):
					game.p["dir"] = dd
			_refresh()
			m["met"] = true
			await alert("You are being attacked by %s.  Prepare to defend yourself." % game.with_article(str(md["name"])), Data.monster_icon(int(md["id"])))
			busy = false
			break
	if game.dead():
		busy = true
		pending_popups.clear()                 # nothing else may open alongside the death dialog
		pending_notes.clear()
		_close_stray_dialogs()
		await get_tree().process_frame
		var mx := int(game.p["maxhp"])
		if mx > 1:
			# "You have just been badly hurt.  After much medical attention, you are ready to play again..."
			var loss := game.rng.randi_range(1, maxi(1, mx / maxi(1, int(game.p["level"]))))
			game.p["maxhp"] = maxi(1, mx - loss)
			game.p["hp"] = game.p["maxhp"]
			var foe := game.engaged_monster()
			if foe.is_empty():
				foe = game.monster_here()
			game.end_fight()
			if not foe.is_empty():
				foe["met"] = false
				foe["awake"] = false
			# you wake at the start of the floor (in front of the stairs you came in by, or outside
			# Subadd's store on floor 1), facing away from them
			var Lv: Dictionary = game.level()
			game.p["x"] = int(Lv["start"][0])
			game.p["y"] = int(Lv["start"][1])
			if int(Lv.get("start_dir", -1)) >= 1:
				game.p["dir"] = int(Lv["start_dir"])
			game.reveal()
			await alert(Data.s("killed_messages", 0), _icon(2003))
			_close_stray_dialogs()
			await get_tree().process_frame
			_reset_fight_state()
			_open_dialogs = 0
			_suspend_cursor(false)
			busy = false
			_on_message("Your maximum hit points have been reduced from %d to %d." % [mx, int(game.p["maxhp"])])
			_refresh()
		else:
			await alert(Data.s("killed_messages", 1), _icon(2003))
			busy = false
			_show_title()

## DITL 2000: "You have just met ^0 ^1.  Prepare to defend yourself." - shown once, the first
## time a monster comes into view straight ahead (within the 3D view's three cells).
func _announce_new_monster() -> bool:
	if not playing or game.levels.is_empty() or _in_combat() or not game.combat_enabled:
		return false
	var cands: Array = []
	var here := Vector2i(int(game.p["x"]), int(game.p["y"]))
	for mm in game.level()["monsters"]:
		if bool(mm.get("fled", false)):
			if absi(int(mm["x"]) - here.x) + absi(int(mm["y"]) - here.y) > 1:
				mm.erase("fled")           # you got away: next time you will meet it afresh
			continue
		# only a monster you could actually reach (no wall or door between) starts a fight
		if game.open_between(here, Vector2i(int(mm["x"]), int(mm["y"]))) and not bool(mm.get("passive", false)):
			cands.append(mm)
	for m in cands:
		if bool(m.get("met", false)):
			continue
		m["met"] = true
		m["awake"] = true
		var md: Dictionary = Data.monsters()[int(m["idx"])]
		var was := busy
		busy = true
		_face_attacker()
		await alert("You have just met %s.  Prepare to defend yourself." % game.with_article(str(md["name"])), Data.monster_icon(int(md["id"])))
		busy = was
		return true
	return false

func _adjacent_awake_monsters() -> Array:
	var out: Array = []
	if game.levels.is_empty():
		return out
	var here := Vector2i(int(game.p["x"]), int(game.p["y"]))
	for m in game.level()["monsters"]:
		var mp := Vector2i(int(m["x"]), int(m["y"]))
		if m["awake"] and (mp == here or game.open_between(here, mp)):
			out.append(m)
	return out

## RUN!! button in the 3D view: step back away from the monster ahead.
## RUN!!: you leave the fight and dash in a random direction - which may be straight into a wall.
func _run_away() -> void:
	if busy:
		return
	var foe := game.engaged_monster()
	if foe.is_empty() and _adjacent_awake_monsters().size() > 0:
		foe = _adjacent_awake_monsters()[0]
	if not foe.is_empty():
		foe["hp"] = foe["maxhp"]          # it recovers ...
		foe["met"] = false                # ... and you will "meet" it again
		foe["awake"] = false
		foe["fled"] = true                # (not while you are still beside it)
	game.end_fight()
	var start_here := Vector2i(int(game.p["x"]), int(game.p["y"]))
	var dir := game.rng.randi_range(1, 4)
	game.p["dir"] = dir
	var d: Vector2i = GameState.DIRS[dir]
	var here := Vector2i(int(game.p["x"]), int(game.p["y"]))
	var to := here + d
	if game.open_between(here, to) and game.monster_at(to.x, to.y).is_empty():
		game.p["x"] = to.x
		game.p["y"] = to.y
		game.hunger_step()
		game.reveal()
		_on_message("You ran away.")
	else:
		Sfx.bump()
		_on_message("You ran into a wall!")
		# you couldn't get away from your space: the monster steps back off it
		if not foe.is_empty() and int(foe["x"]) == start_here.x and int(foe["y"]) == start_here.y:
			for dd in [1, 2, 3, 4]:
				var nb: Vector2i = start_here + GameState.DIRS[dd]
				if game.open_between(start_here, nb) and game.tile(nb.x, nb.y) == LevelGen.T.FLOOR and game.monster_at(nb.x, nb.y).is_empty():
					foe["x"] = nb.x
					foe["y"] = nb.y
					break
	game.p["calm"] = 1
	_after_turn()

func _use_item(i: int) -> void:
	if busy or i >= game.p["pack"].size():
		return
	var it0: Dictionary = game.p["pack"][i]
	if _in_combat() and str(it0["kind"]) == "scroll" and int(it0["type"]) == 0:   # teleport
		busy = true
		await alert("You can't use that scroll while you are fighting.")
		busy = false
		return
	var potion_sound := 0
	if str(it0["kind"]) == "potion":
		potion_sound = 23528 if int(it0["type"]) in HARMFUL_POTIONS else 23511
	if str(it0["kind"]) in ["potion", "scroll", "ring", "helm", "amulet"] and not game.is_known(it0):
		busy = true
		if potion_sound != 0:
			Sfx.play_id(potion_sound)       # heard as the potion is revealed
			potion_sound = 0
		await _timed_note("This is %s." % game.with_article(_wish_name(it0)), 3.0)
		busy = false
	if potion_sound != 0:
		Sfx.play_id(potion_sound)
	var res := game.use_item(i)
	if res == "wand":
		await _fire_wand(i)
	elif res == "teleport":
		# f4_55b8: 1-3 floors up or down (floors 1-20)
		var step := game.rng.randi_range(1, 3) * (1 if game.rng.randi_range(0, 1) == 0 else -1)
		var to := clampi(game.depth + step, 1, GameState.MAX_DEPTH)
		await _teleport_fx()
		if to != game.depth:
			game.enter_level(to, to < game.depth)
	elif res == "knowledge":
		busy = true
		var kinds := ["potion", "scroll", "wand", "ring", "helm", "amulet"]
		var r: Array = await choice_dialog("Please select the type of treasure you want to identify.", ["Potion", "Scroll", "Wand", "Ring", "Helm", "Amulet"], ["OK"])
		busy = false
		if int(r[1]) >= 0:
			game.identify_kind(str(kinds[int(r[1])]))
	_after_turn()

func _heal() -> void:
	if int(game.p["hp"]) >= int(game.p["maxhp"]):
		_on_message("You are already in perfect health.")
		return
	busy = true
	var solved := 0
	for i in 3:
		if await ask_problem("help yourself concentrate so your wounds will heal"):
			solved += 1
	if solved > 0:
		var amt: int = int(game.p["maxhp"]) * solved / 3
		game.p["hp"] = mini(int(game.p["maxhp"]), int(game.p["hp"]) + amt)
		_on_message("You concentrate and %d of your wounds heal." % amt)
	else:
		_on_message(Data.s("problem_alerts", 2, "You can't heal yourself unless you solve some problems."))
	busy = false
	_after_turn()

# ================================================================= dialogs
## Mac buttons invert while pressed; after a click they stay inverted for a moment before the
## dialog acts (as in the playthrough), so a quick click is still visible.
func _press(b: BaseButton, result) -> void:
	# The theme shows the inverted (pressed) look while the mouse is held down; the dialog acts
	# immediately on release.  Picture buttons without a pressed image dim only briefly.
	if b is TextureButton and (b as TextureButton).texture_pressed == null:
		b.modulate = Color(0.6, 0.6, 0.6)
		var restore := func() -> void:
			if is_instance_valid(b):
				b.modulate = Color.WHITE
		get_tree().create_timer(0.027).timeout.connect(restore)
	modal_done.emit(result)

## LineEdits keep the keyboard after Enter (Godot 4.4+ ends editing on submit otherwise).
func _keep_typing(le: LineEdit) -> void:
	if "keep_editing_on_text_submit" in le:
		le.set("keep_editing_on_text_submit", true)

func _refocus(le: LineEdit, delay: float = 0.0) -> void:
	if delay > 0.0:
		await get_tree().create_timer(delay).timeout
	if is_instance_valid(le) and le.is_inside_tree():
		le.grab_focus()
		if le.has_method("edit"):
			le.call("edit")
## Each dialog gets its own full-screen blocking overlay, so dialogs can stack.
var _open_dialogs := 0

func _overlay() -> Control:
	var o := Control.new()
	o.size = MacUI.SCREEN
	o.mouse_filter = Control.MOUSE_FILTER_STOP
	add_child(o)
	_open_dialogs += 1
	_suspend_cursor(true)
	o.tree_exited.connect(_on_dialog_closed)
	o.set_meta("ck_dialog", true)
	return o

## The dialog on top (the most recently opened backdrop still on screen), or null.
func _top_dialog() -> Node:
	var kids := get_children()
	for i in range(kids.size() - 1, -1, -1):
		var ch: Node = kids[i]
		if ch.has_meta("ck_dialog") and not ch.is_queued_for_deletion():
			return ch
	return null

## Waits for a button of THIS dialog.  Every dialog's buttons send the same signal, so a click on another
## dialog opened above this one must not end this one too (that left an orphaned backdrop swallowing
## every click - the soft lock).  If this dialog has gone, it ends with -1.
func _wait_modal(ov: Node) -> Variant:
	while true:
		var r = await modal_done
		if not is_instance_valid(ov) or ov.is_queued_for_deletion():
			return -1
		if _top_dialog() == ov:
			return r
	return -1                         # (never reached: GDScript requires a return after the loop)

## Removes any dialog backdrop still on screen (one can be left behind if two dialogs opened at once).
func _close_stray_dialogs() -> void:
	for ch in get_children():
		if ch.has_meta("ck_dialog"):
			ch.queue_free()

## Back to a clean state after a death: no fight, no animation, nothing waiting.
func _reset_fight_state() -> void:
	game.end_fight()
	pending_kill.clear()
	pending_notes.clear()
	pending_popups.clear()
	view3d.effect = null
	view3d.effect_offset = Vector2.ZERO
	view3d.attack_zoom = 0.0
	view3d.dither = false
	view3d.hit_flash = null
	view3d.tomb = null
	view3d.set_teleport_steps(0)
	_monster_landed = false
	_enter_presses_default = false
	_nav_ready_at = 0

var _enter_presses_default := false

## The game's own grabbing hand (CURS 304) while the pointer is over something you can take.
func _grab_cursor(b: Control) -> void:
	b.mouse_entered.connect(func(): view3d._set_cursor(View3D.HAND_CURSOR))
	b.mouse_exited.connect(func(): view3d._set_cursor(-1))
	b.tree_exiting.connect(func(): view3d._set_cursor(-1))

func _on_dialog_closed() -> void:
	_open_dialogs = maxi(0, _open_dialogs - 1)
	_nav_ready_at = Time.get_ticks_msec() + 80
	if _open_dialogs == 0:
		_suspend_cursor(false)

func _suspend_cursor(on: bool) -> void:
	if view3d:
		view3d.suspended = on
		if on:
			view3d._set_cursor(-1)

func alert(text: String, pic: Texture2D = null) -> void:
	await modal(text, ["OK"], pic)

## Builds a dialog panel around a MarginContainer with MacUI.PAD on every side.
func _dialog_shell(ov: Control) -> Array:
	var panel := MacUI.dialog_panel(Rect2(0, 0, 100, 100))
	panel.modulate.a = 0.0
	ov.add_child(panel)
	var mc := MarginContainer.new()
	for side in ["margin_left", "margin_right", "margin_top", "margin_bottom"]:
		mc.add_theme_constant_override(side, int(MacUI.PAD))
	panel.add_child(mc)
	return [panel, mc]

## Sizes the panel to its contents and centres it (a third of the way down, like Mac alerts).
func _fit_shell(panel: Panel, mc: MarginContainer) -> void:
	await get_tree().process_frame
	await get_tree().process_frame
	var sz := mc.get_combined_minimum_size()
	mc.size = sz
	MacUI.resize_dialog(panel, sz)
	panel.position = Vector2(floor((MacUI.SCREEN.x - sz.x) / 2.0), floor(maxf(30.0, (MacUI.SCREEN.y - sz.y) / 3.0)))
	panel.modulate.a = 1.0

func _mac_button(text: String, result: int, is_default: bool, disabled: bool = false) -> Button:
	var b := Button.new()
	b.text = text
	var bw: float = maxf(68.0, get_theme_default_font().get_string_size(text, HORIZONTAL_ALIGNMENT_LEFT, -1, 12).x + 34)
	b.custom_minimum_size = Vector2(bw, 22)
	if is_default:
		MacUI.default_button(b)
	b.disabled = disabled
	b.pressed.connect(_press.bind(b, result))
	return b

## Mac modal dialog; returns the button index, or [index, text] when input is true.
## Small pictures (icons) sit left of the text; large pictures sit above it.
func modal(text: String, buttons: Array = ["OK"], pic: Texture2D = null, input: bool = false, title: String = "", disabled: Array = []) -> Variant:
	var ov := _overlay()
	var sh := _dialog_shell(ov)
	var panel: Panel = sh[0]
	var mc: MarginContainer = sh[1]
	var vb := VBoxContainer.new()
	vb.add_theme_constant_override("separation", 12)
	mc.add_child(vb)
	var pic_sz := Vector2.ZERO
	if pic:
		pic_sz = pic.get_size()
		if pic_sz.x > 460:
			pic_sz *= 460.0 / pic_sz.x
		if pic_sz.y > 360:
			pic_sz *= 360.0 / pic_sz.y
	var big_pic: bool = pic != null and pic_sz.x > 64
	if title != "":
		var tl := MacUI.label(title, 13)
		tl.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		tl.custom_minimum_size = Vector2(300, 0)
		vb.add_child(tl)
	if big_pic:
		var cc := CenterContainer.new()
		var tr := TextureRect.new()
		tr.texture = pic
		tr.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		tr.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		tr.custom_minimum_size = pic_sz
		cc.add_child(tr)
		vb.add_child(cc)
	if text != "" or (pic and not big_pic):
		var row := HBoxContainer.new()
		row.add_theme_constant_override("separation", 12)
		if pic and not big_pic:
			var ic := TextureRect.new()
			ic.texture = pic
			ic.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
			ic.custom_minimum_size = pic_sz
			ic.size_flags_vertical = Control.SIZE_SHRINK_BEGIN
			row.add_child(ic)
		if text != "":
			var body := MacUI.label(text)
			body.custom_minimum_size = Vector2(maxf(300.0, pic_sz.x) if big_pic else 320.0, 0)
			body.size_flags_horizontal = Control.SIZE_EXPAND_FILL
			row.add_child(body)
		vb.add_child(row)
	var le: LineEdit = null
	if input:
		var cc2 := CenterContainer.new()
		le = LineEdit.new()
		le.custom_minimum_size = Vector2(160, 22)
		cc2.add_child(le)
		vb.add_child(cc2)
		le.text_submitted.connect(func(_t): modal_done.emit(0))
		_keep_typing(le)
	var hb := HBoxContainer.new()
	hb.alignment = BoxContainer.ALIGNMENT_END
	hb.add_theme_constant_override("separation", 10)
	vb.add_child(hb)
	# buttons read left to right in the order given ("Yes", "No"); the first is the default
	var first_btn: Button = null
	for i in buttons.size():
		var mbtn := _mac_button(str(buttons[i]), i, i == 0 and buttons.size() <= 3, disabled.has(i))
		hb.add_child(mbtn)
		if first_btn == null and not disabled.has(i):
			first_btn = mbtn
	await _fit_shell(panel, mc)
	if first_btn and not input:
		first_btn.grab_focus()
	if le:
		_refocus.call_deferred(le)
	_enter_presses_default = le == null and buttons.size() >= 1 and not disabled.has(0)
	var r = await _wait_modal(ov)
	_enter_presses_default = false
	var txt := le.text if le else ""
	ov.queue_free()
	if input:
		return [int(r), txt]
	return int(r)

## Radio-button choice dialog (multiple-choice questions, inventory selection).
## Returns [button index, chosen item index or -1].
func choice_dialog(text: String, choices: Array, buttons: Array = ["OK", "Cancel"], tips: Array = [], default_index: int = 0, disabled_for: Dictionary = {}) -> Array:
	var ov := _overlay()
	var sh := _dialog_shell(ov)
	var panel: Panel = sh[0]
	var mc: MarginContainer = sh[1]
	var hb := HBoxContainer.new()
	hb.add_theme_constant_override("separation", 20)
	mc.add_child(hb)
	var left := VBoxContainer.new()
	left.add_theme_constant_override("separation", 4)
	hb.add_child(left)
	var l := MacUI.label(text)
	l.custom_minimum_size = Vector2(300, 0)
	left.add_child(l)
	var group := ButtonGroup.new()
	var radios: Array = []
	for i in choices.size():
		var cb := CheckBox.new()
		cb.text = MacUI.single_space(str(choices[i]))
		cb.button_group = group
		if i < tips.size() and str(tips[i]) != "":
			cb.tooltip_text = str(tips[i])
		var ind := MarginContainer.new()
		ind.add_theme_constant_override("margin_left", 20)
		ind.add_child(cb)
		left.add_child(ind)
		radios.append(cb)
	if radios.size() > 0:
		var first: CheckBox = radios[clampi(default_index, 0, radios.size() - 1)]
		first.button_pressed = true
	var right := VBoxContainer.new()
	right.add_theme_constant_override("separation", 10)
	hb.add_child(right)
	var btns: Array = []
	for i in buttons.size():
		var bt := _mac_button(str(buttons[i]), i, i == 0)
		right.add_child(bt)
		btns.append(bt)
	# disabled_for = {button index: [choices for which that button is disabled]}
	if not disabled_for.is_empty():
		var update := func() -> void:
			var sel := -1
			for j in radios.size():
				if (radios[j] as CheckBox).button_pressed:
					sel = j
			for bi in disabled_for.keys():
				if int(bi) < btns.size():
					(btns[int(bi)] as Button).disabled = (disabled_for[bi] as Array).has(sel)
		for rb2 in radios:
			(rb2 as CheckBox).toggled.connect(func(_on): update.call())
		update.call()
	await _fit_shell(panel, mc)
	var r = await _wait_modal(ov)
	var chosen := -1
	for i in radios.size():
		var rb: CheckBox = radios[i]
		if rb.button_pressed:
			chosen = i
	ov.queue_free()
	return [int(r), chosen]

## A standard-size button in the dialog's bottom-right corner, inside the padding.
func _corner_button(panel: Panel, text: String, result: int) -> Button:
	var b := _mac_button(text, result, false)
	b.size = b.custom_minimum_size
	b.position = panel.size - b.size - Vector2(MacUI.PAD, MacUI.PAD)
	panel.add_child(b)
	return b

## Adds the standard inner padding around the contents of a hand-laid-out dialog panel.
func _pad(panel: Panel) -> void:
	var off := Vector2(MacUI.PAD - 4.0, MacUI.PAD - 4.0)
	var inner := panel.get_child(0)
	for c in panel.get_children():
		if c == inner:
			continue
		var cc := c as Control
		if cc:
			cc.position += off
	panel.position -= off
	MacUI.resize_dialog(panel, panel.size + off * 2.0)

## Ask one knowledge problem in the original's dialog styles. Returns true if solved.
func ask_problem(reason: String, difficulty: int = -1, cancel_label: String = "") -> Variant:
	if not _any_problems():
		return 1 if cancel_label != "" else true      # no problem types chosen: everything just passes
	var r = await _ask(reason, difficulty, cancel_label)
	if cancel_label != "":
		return r            # 1 solved, 0 wrong, -1 stopped
	return r == 1

var forced_problem: Dictionary = {}

## Whether any problem type is chosen in Problem Options.
func _any_problems() -> bool:
	var o: Dictionary = game.options
	for k in ["counting", "math_add", "math_sub", "math_mul", "math_div", "deduction", "coins", "synonyms", "capitals", "words4", "words5", "words6"]:
		if bool(o.get(k, false)):
			return true
	return false

func _ask(reason: String, difficulty: int, cancel_label: String) -> int:
	if difficulty < 0:
		difficulty = clampi((game.depth - 1) / 7, 0, 2)
	var pr := Puzzles.make(game.options, game.rng, difficulty)
	if not forced_problem.is_empty():
		pr = forced_problem
		forced_problem = {}
	var intro := str(pr["intro"]) % reason
	var choices: Array = pr["choices"]
	var ok := false
	var kind := str(pr["kind"])
	if kind == "count" or kind == "coins" or kind == "teaser" or kind == "money":
		var res: int = 0
		if kind == "count":
			res = await _counting_dialog(intro, pr)
		elif kind == "money":
			res = await _money_dialog(intro, pr)
		elif kind == "coins":
			res = await _coin_dialog(intro, pr)
		else:
			res = await _teaser_dialog(intro, pr)
		if res < 0:
			return -1
		ok = res == 1
		if ok:
			_on_message("Correct!")
		else:
			Sfx.beep()
			await alert("Sorry, that is not correct.")
		return 1 if ok else 0
	if choices.size() > 0:
		var r: Array = await choice_dialog(intro + "\n\n" + str(pr["question"]), choices, ["OK", cancel_label if cancel_label != "" else "Cancel"])
		if int(r[0]) == 1:
			return -1
		ok = int(r[1]) >= 0 and Puzzles.check(pr, str(choices[int(r[1])]))
	else:
		var hint_used := 0
		var buttons: Array = ["OK", cancel_label if cancel_label != "" else "Cancel"]
		if str(pr["kind"]) == "word":
			buttons.append("Hint")
		while true:
			var r2 = await _typed_problem(intro, pr, buttons)
			if int(r2[0]) == 1:
				return -1
			if int(r2[0]) == 2:
				hint_used += 1
				await alert("The word starts with \"%s\"." % str(pr["answer"]).substr(0, hint_used))
				continue
			ok = Puzzles.check(pr, str(r2[1]))
			break
	if ok:
		_on_message("Correct!")       # (no fanfare for a solved problem)
	else:
		Sfx.beep()
		await alert("Sorry, the correct answer was %s." % pr["answer"])
	return 1 if ok else 0

# ================================================================= attributes (f2_504a, DLOG 201)
## "Your parents have endowed you with ^0 points of ability."  Each attribute starts at 12;
## clicking its icon adds 1 while it is 12..24, and every click spends a point.  The pool is
## f2_79a8(12) + 8 = 9..20 (f2_79a8(n) = 1 + Random mod n) - the 14 in the playthrough was
## one roll.  Set FIXED_POINTS to 14 to always give 14.
const FIXED_POINTS := -1

func _attributes() -> bool:
	busy = true
	var points: int = FIXED_POINTS if FIXED_POINTS > 0 else game.rng.randi_range(1, 12) + 8
	var stats := ["str", "dex", "iq", "lk"]
	for k in stats:
		game.p[k] = 12
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(154 + 80, 130 + 60, 346, 192))
	ov.add_child(panel)
	var txt := MacUI.label("Your parents have endowed you with %d points of ability.  You must decide how you will develop." % points)
	txt.position = Vector2(4, 2)
	txt.size = Vector2(310, 50)
	panel.add_child(txt)
	var bar := TextureRect.new()
	bar.texture = Data.tex("ppat_art_162")
	bar.stretch_mode = TextureRect.STRETCH_TILE
	bar.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	bar.position = Vector2(20, 60)
	bar.size = Vector2(points * 4, 10)
	panel.add_child(bar)
	var frame := ReferenceRect.new()
	frame.border_color = Color.BLACK
	frame.editor_only = false
	frame.position = Vector2(20, 60)
	frame.size = Vector2(points * 4, 10)
	panel.add_child(frame)
	var icon_rects := [Rect2(20, 132, 32, 32), Rect2(88, 132, 32, 32), Rect2(149, 132, 32, 32), Rect2(207, 132, 32, 32)]
	var val_rects := [Rect2(26, 104, 24, 19), Rect2(93, 104, 24, 19), Rect2(153, 104, 24, 19), Rect2(211, 104, 24, 19)]
	var vals: Array = []
	for i in 4:
		var b := TextureButton.new()
		b.texture_normal = _icon(201 + i)
		b.position = icon_rects[i].position
		b.size = icon_rects[i].size
		b.ignore_texture_size = true
		b.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
		var idx := i
		b.tooltip_text = ["Strength. Your main attack for hits and damage.", "Dexterity. Your main defense.",
			"IQ. Improves spell hit chance and resistance.", "Luck. Improves chance of escaping traps and fatal enemy attacks."][i]
		b.pressed.connect(_press.bind(b, idx))
		panel.add_child(b)
		var v := MacUI.label("12")
		v.position = val_rects[i].position
		v.size = val_rects[i].size
		v.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		panel.add_child(v)
		vals.append(v)
	_dlg_button(panel, "Cancel", Rect2(275, 155, 58, 20), -1)
	_pad(panel)
	var ok := true
	while points > 0:
		var r = await _wait_modal(ov)
		if int(r) < 0 or int(r) <= -900:
			ok = false
			break
		var key: String = stats[int(r)]
		if int(game.p[key]) >= 19:
			Sfx.beep()          # 19 is the most one stat can have here: the point is kept for another
			continue
		game.p[key] = int(game.p[key]) + 1
		var lab: Label = vals[int(r)]
		lab.text = str(int(game.p[key]))
		points -= 1
		bar.size.x = points * 4
	ov.queue_free()
	busy = false
	return ok

# ================================================================= starting money round
## The gold quiz (f2_33a2): "You have until the circle fills to earn money for a weapon
## and armor."  Vertical arithmetic; 50 gold per correct answer; the pie (50x50 oval at
## (5,110)) gains 3 degrees every 60 ticks, so it fills in 120 s (the routine's 7200-tick cap).
func _money_round() -> bool:
	busy = true
	var ov := _overlay()
	var W := 330.0
	var H := 206.0
	var panel := MacUI.dialog_panel(Rect2((MacUI.SCREEN.x - W) / 2.0, 180, W, H))
	ov.add_child(panel)
	var intro := MacUI.label(Data.s("math_problem_intro", 0))
	intro.position = Vector2(10, 8)
	intro.size = Vector2(W - 20, 34)
	panel.add_child(intro)
	var a_lab := MacUI.label("", 14)
	var b_lab := MacUI.label("", 14)
	for l in [a_lab, b_lab]:
		(l as Label).horizontal_alignment = HORIZONTAL_ALIGNMENT_RIGHT
		(l as Label).autowrap_mode = TextServer.AUTOWRAP_OFF
		(l as Label).size = Vector2(70, 20)
		panel.add_child(l)
	a_lab.position = Vector2(120, 50)
	b_lab.position = Vector2(120, 72)
	var rule := ColorRect.new()
	rule.color = Color.BLACK
	rule.position = Vector2(140, 96)
	rule.size = Vector2(52, 1)
	panel.add_child(rule)
	var le := LineEdit.new()
	le.add_theme_constant_override("minimum_character_width", 0)   # let it be exactly the rule's width
	le.add_theme_stylebox_override("focus", StyleBoxEmpty.new())    # (the focus frame drew outside the box)
	le.alignment = HORIZONTAL_ALIGNMENT_RIGHT
	panel.add_child(le)
	# size and place set after add_child: set before, Godot recomputes them when the box enters the tree
	le.custom_minimum_size = Vector2(52, 22)
	le.size = Vector2(52, 22)
	le.position = Vector2(140, 102)                                 # right edge on the rule's right edge
	var pie := Control.new()
	pie.position = Vector2(5, 110)
	pie.size = Vector2(50, 50)
	panel.add_child(pie)
	var st := {"angle": 0.0}
	var draw_pie := func() -> void:
		var c := Vector2(25, 25)
		var a: float = st["angle"]
		if a > 0.0:
			var pts := PackedVector2Array([c])
			var nseg := maxi(2, int(a / 6.0))
			for i in nseg + 1:
				var t := deg_to_rad(-90.0 + a * float(i) / float(nseg))
				pts.append(c + Vector2(cos(t), sin(t)) * 25.0)
			pie.draw_colored_polygon(pts, Color.BLACK)
		pie.draw_arc(c, 24.5, 0.0, TAU, 48, Color.BLACK, 1.0)
	pie.draw.connect(draw_pie)
	var gold_lab := MacUI.label("0", 11)
	gold_lab.position = Vector2(232, 94)
	gold_lab.size = Vector2(60, 14)
	gold_lab.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	panel.add_child(gold_lab)
	var gold_icon := TextureRect.new()
	gold_icon.texture = _icon(208)
	gold_icon.position = Vector2(246, 110)
	panel.add_child(gold_icon)
	var opts := {"math_add": true, "math_sub": false, "math_mul": false, "math_div": false, "max_sum": game.options.get("max_sum", 20), "max_mult": 10,
		"synonyms": false, "capitals": false, "words": false, "counting": false, "coins": false, "teaser": false}
	var earned := {"gold": 0}
	var show_problem := func() -> void:
		var pr := Puzzles.addition(opts, game.rng, 0)
		st["pr"] = pr
		var lines: PackedStringArray = str(pr["question"]).split("\n")
		a_lab.text = lines[0].strip_edges() if lines.size() > 0 else ""
		b_lab.text = lines[1].strip_edges() if lines.size() > 1 else ""
		le.text = ""
	show_problem.call()
	var on_answer := func(t: String) -> void:
		if t.strip_edges() == "":
			return                     # Return pressed by mistake: nothing happens
		var snd := 0.0
		if Puzzles.check(st["pr"], t):
			earned["gold"] = int(earned["gold"]) + 50
			gold_lab.text = str(int(earned["gold"]))
			snd = Sfx.play_len("gold")
		else:
			Sfx.beep()
		show_problem.call()
		_refocus(le)
		_refocus(le, snd + 0.05)
	le.text_submitted.connect(on_answer)
	var on_typed := func(t: String) -> void:
		if t.strip_edges() == "" or not Puzzles.check(st["pr"], t):
			return
		await get_tree().create_timer(0.4).timeout
		if le.text == t and Puzzles.check(st["pr"], t):
			on_answer.call(t)
	le.text_changed.connect(on_typed)
	le.focus_exited.connect(func(): _refocus(le, 0.01))
	_keep_typing(le)
	le.grab_focus()
	_pad(panel)
	# Cancel: back out of starting a game
	var cancel_b := _mac_button("Cancel", -99, false)
	cancel_b.size = cancel_b.custom_minimum_size
	cancel_b.position = Vector2(W - 16 - cancel_b.size.x, H - 36)
	panel.add_child(cancel_b)
	cancel_b.pressed.connect(func(): st["cancel"] = true)
	var t0 := Time.get_ticks_msec()
	while float(st["angle"]) < 361.0 and Time.get_ticks_msec() - t0 < 120000 and _proof_action == "" and not bool(st.get("cancel", false)):
		# 3 degrees for every whole second since the quiz began (worked out from the start, so it never drifts)
		var a := floorf((Time.get_ticks_msec() - t0) / 1000.0) * 3.0
		if a != float(st["angle"]):
			st["angle"] = a
			pie.queue_redraw()
		await get_tree().process_frame
	ov.queue_free()
	if bool(st.get("cancel", false)):
		busy = false
		return false
	game.p["gold"] = int(game.p["gold"]) + int(earned["gold"])
	await alert("Time is up!  You have earned %d gold pieces." % int(earned["gold"]))
	busy = false
	_refresh()
	return true

# ================================================================= shops
# APPROX prices: the original's price tables were not found.  Values seen in the playthrough are
# used where known (start shop: plate mail and two hand sword 2000, chain mail and scimitar 1000;
# Subadd: plate mail and two hand sword 3000, Add Hit Points 1400, Increase Level 2800,
# Excrutius 2800, leather shield 1250); the rest follow the same scale.
const START_PRICES := [2000, 1000, 500, 250, 50]          # the original data block: 2000 1000 500 250 50        # DITL 209 rows: plate/2-hand ... robe/short
const STORE_WEAPON_PRICES := [3000, 1500, 750, 375, 75]
const STORE_DEPTS := [
	# [picture, DITL, kind, item types in DITL order, prices]
	["art_4001", 4001, "potion", [0, 2, 4, 5, 7, 9, 11, 14, 15, 17], [900, 900, 400, 1400, 1200, 800, 800, 2800, 700, 1500]],
	["art_4002", 4002, "scroll", [1, 2, 3, 5, 7, 8, 9, 10, 11, 12, 15, 1], [250, 400, 600, 600, 500, 900, 400, 900, 500, 1200, 600, 300]],
	["art_4003", 4003, "wand", [0, 1, 2, 3, 4, 5, 6, 7, 12, 14], [500, 900, 1500, 1200, 500, 900, 1500, 1200, 1200, 1500]],
	["art_4004", 209, "weapons", [], []],
	["art_4005", 4005, "shield", [0, 1, 2, 3, 4], [1250, 1500, 1800, 2200, 2600]],
	["art_4006", 4006, "spell", [0, 1, 2, 3, 4], [400, 800, 1400, 2000, 2800]],
]

func _buy(item: Dictionary, price: int, icon: Texture2D) -> bool:
	var gold := int(game.p["gold"])
	var kind := str(item["kind"])
	var slot_empty := false
	if kind == "sword":
		slot_empty = int(game.p["sword"]["type"]) >= 5
	elif kind in ["armor", "shield"]:
		slot_empty = int(game.p[kind]["type"]) < 0
	if kind != "spell" and not slot_empty and game.can_carry(item) != "":
		await modal(game.can_carry(item), ["OK"], icon)       # no room for it: the purchase is refused
		return false
	if gold < price:
		await modal("You have %d gold pieces.\nThis %s costs %d gold pieces.  You don't have enough gold to buy this item." % [gold, _shop_name(item), price], ["Cancel"], icon)
		return false
	var r = await modal("You have %d gold pieces.\nThis %s costs %d gold pieces.  Do you want to buy it?" % [gold, _shop_name(item), price], ["Buy It", "Cancel"], icon)
	if int(r) != 0:
		return false
	game.p["gold"] = gold - price
	Sfx.play("gold")
	game.identify(str(item["kind"]), int(item.get("type", 0)))     # bought items are known
	match str(item["kind"]):
		"armor", "sword", "shield":
			var bought := {"kind": kind, "type": int(item["type"]), "bonus": 0}
			if slot_empty:
				game.p[kind] = {"type": int(item["type"]), "bonus": 0}     # nothing worn: put it on
			else:
				game.give_item(bought)                                     # otherwise it goes in the pack
		"spell":
			game.add_spells(int(item["type"]), 1)
		_:
			game.give_item(item)
	_refresh()
	return true

func _shop_name(item: Dictionary) -> String:
	if str(item.get("kind", "")) == "spell":
		return Data.s("spell_names", int(item["type"])) + " spell"
	return game.item_name(item, true)          # the store names its goods

## A shop dialog laid out from its DITL: icons and labels at their original positions plus Done.
## items[i] = [item, price] for the i-th icon/label pair; hidden lists pairs not shown.
func _ditl_shop(ditl_id: int, items: Array, hidden: Array = []) -> int:
	var dl: Array = Data.art.get("DITL", {}).get(str(ditl_id), [])
	var dlog: Dictionary = Data.art.get("DLOG", {}).get(str(ditl_id), {})
	var dr: Array = dlog.get("rect", [60, 170, 280, 480])
	var sz := Vector2(float(dr[3]) - float(dr[1]), float(dr[2]) - float(dr[0]))
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(((MacUI.SCREEN - sz) / 2.0).floor(), sz))
	ov.add_child(panel)
	var icons: Array = []
	var labels: Array = []
	var done_text := "Done"
	for it in dl:
		var r: Array = it["rect"]
		var rect := Rect2(float(r[1]), float(r[0]), float(r[3]) - float(r[1]), float(r[2]) - float(r[0]))
		match str(it["type"]):
			"icon":
				icons.append([rect, int(it.get("resID", 0))])
			"statText":
				if str(it.get("text", "")).begins_with("Please make"):
					var hl := MacUI.label(str(it["text"]))
					hl.position = rect.position
					hl.size = rect.size + Vector2(40, 0)
					panel.add_child(hl)
				else:
					labels.append([rect, str(it.get("text", "")).strip_edges()])
			"button":
				done_text = str(it.get("text", "Done")).capitalize()
	for i in mini(icons.size(), labels.size()):
		if i >= items.size() or hidden.has(i):
			continue
		var ib := TextureButton.new()
		ib.texture_normal = _icon(int(icons[i][1]))
		ib.ignore_texture_size = true
		ib.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
		ib.position = icons[i][0].position
		ib.size = icons[i][0].size
		ib.pressed.connect(_press.bind(ib, i))
		panel.add_child(ib)
		var lb := Button.new()
		lb.flat = true
		lb.text = str(labels[i][1])
		lb.alignment = HORIZONTAL_ALIGNMENT_LEFT
		lb.position = labels[i][0].position - Vector2(4, 2)
		lb.size = labels[i][0].size + Vector2(8, 4)
		lb.add_theme_color_override("font_color", Color.BLACK)
		lb.add_theme_color_override("font_hover_color", Color.BLACK)
		lb.pressed.connect(_press.bind(lb, i))
		panel.add_child(lb)
	if ditl_id in [4005, 4006]:
		MacUI.resize_dialog(panel, panel.size + Vector2(0, 26))
	_pad(panel)
	_corner_button(panel, done_text, -1)
	var res = await _wait_modal(ov)
	ov.queue_free()
	return int(res)

## The shop at the start of a game (DITL 209): armor and swords only.  Once you buy from a
## column, that column disappears (as in the playthrough).
func _start_shop() -> void:
	busy = true
	var items: Array = []
	for t in [4, 3, 2, 1, 0]:
		items.append([{"kind": "armor", "type": t, "bonus": 0}, START_PRICES[4 - t]])
	for t in 5:
		items.append([{"kind": "sword", "type": t, "bonus": 0}, START_PRICES[t]])
	var hidden: Array = []
	while true:
		var i: int = await _ditl_shop(209, items, hidden)
		if i < 0:
			break
		var it: Dictionary = items[i][0]
		if await _buy(it, int(items[i][1]), _item_icon(it)):
			var col: Array = [0, 1, 2, 3, 4] if i < 5 else [5, 6, 7, 8, 9]
			hidden.append_array(col)
		if hidden.size() >= 10:
			break
	busy = false
	_refresh()

## Subadd's General Store: entrance (PICT 4010), then the departments window (six pictures,
## PICT 4001-4006, and Exit Store), each opening its DITL item dialog.
func _store() -> void:
	busy = true
	var e = await modal("", ["Enter Store", "Return To Game"], Data.tex("art_4010"))
	if int(e) != 0:
		busy = false
		return
	while true:
		var d: int = await _departments()
		if d < 0:
			break
		var dept: Array = STORE_DEPTS[d]
		var items: Array = []
		if str(dept[2]) == "weapons":
			for t in [4, 3, 2, 1, 0]:
				items.append([{"kind": "armor", "type": t, "bonus": 0}, STORE_WEAPON_PRICES[4 - t]])
			for t in 5:
				items.append([{"kind": "sword", "type": t, "bonus": 0}, STORE_WEAPON_PRICES[t]])
		else:
			var types: Array = dept[3]
			var prices: Array = dept[4]
			for j in types.size():
				var it := {"kind": str(dept[2]), "type": int(types[j])}
				if str(dept[2]) == "wand":
					it["charges"] = 1
				if str(dept[2]) == "shield":
					it["bonus"] = 0
				items.append([it, int(prices[j])])
		while true:
			var i: int = await _ditl_shop(int(dept[1]), items)
			if i < 0:
				break
			var it2: Dictionary = items[i][0]
			var ic: Texture2D = _icon(20030) if str(it2["kind"]) == "spell" else _item_icon(it2)
			await _buy(it2, int(items[i][1]), ic)
	busy = false
	_refresh()

func _departments() -> int:
	var ov := _overlay()
	var cell := Vector2(112, 120)
	var sz := Vector2(cell.x * 3 + 24, cell.y * 2 + 52)
	var panel := MacUI.dialog_panel(Rect2(((MacUI.SCREEN - sz) / 2.0).floor(), sz))
	ov.add_child(panel)
	for i in STORE_DEPTS.size():
		var b := TextureButton.new()
		b.texture_normal = Data.tex(str(STORE_DEPTS[i][0]))
		b.ignore_texture_size = true
		b.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
		b.position = Vector2(12 + (i % 3) * cell.x, 10 + (i / 3) * cell.y)
		b.size = cell - Vector2(4, 4)
		b.pressed.connect(_press.bind(b, i))
		panel.add_child(b)
	_pad(panel)
	_corner_button(panel, "Exit Store", -1)
	var r = await _wait_modal(ov)
	ov.queue_free()
	return int(r)

## Item descriptions for tooltips (game_data.json "item_descriptions").
func _describe(it: Dictionary, true_name: bool = false) -> String:
	if not true_name and not game.is_known(it):
		return "You don't know what this does yet."
	var descs: Dictionary = Data.d.get("item_descriptions", {})
	var key := game.item_name(it, true)
	if str(it["kind"]) == "wand":
		key = "wand of " + Data.s("wands", int(it["type"]))
	elif str(it["kind"]) in ["armor", "sword", "shield"]:
		key = str(it["kind"]) + ":" + str(int(it["type"]))
	return str(descs.get(key, ""))

## Vending machine (playthrough): six symbols with the current value above and the price
## below; click a symbol to buy.
func _vending() -> void:
	busy = true
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(220, 150, 360, 196))
	ov.add_child(panel)
	var l := MacUI.label("You have discovered a vending machine which dispenses items which can help you.  The price for each item is shown below its symbol.  Please make your choices.")
	l.position = Vector2(4, 2)
	l.size = Vector2(332, 64)
	panel.add_child(l)
	var vals: Array = []
	for i in VENDING.size():
		var v: Array = VENDING[i]
		var x := 12.0 + i * 54.0
		var cur := MacUI.label("", 11)
		cur.position = Vector2(x, 84)
		cur.size = Vector2(40, 14)
		cur.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		panel.add_child(cur)
		vals.append(cur)
		var b := TextureButton.new()
		b.texture_normal = _icon(int(v[0]))
		b.position = Vector2(x + 4, 100)
		b.size = Vector2(32, 32)
		b.ignore_texture_size = true
		b.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
		b.pressed.connect(_press.bind(b, i))
		_grab_cursor(b)
		panel.add_child(b)
		var pr := MacUI.label(str(v[3]), 11)
		pr.position = Vector2(x, 134)
		pr.size = Vector2(40, 14)
		pr.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
		panel.add_child(pr)
	_pad(panel)
	_corner_button(panel, "Cancel", -1)
	while true:
		for i in VENDING.size():
			var stat: String = VENDING[i][1]
			var lab: Label = vals[i]
			if stat == "food":
				lab.text = ""
			elif stat == "hp":
				lab.text = str(int(game.p["maxhp"]))
			else:
				lab.text = str(int(game.p.get(stat, 14)))
		var r = await _wait_modal(ov)
		if int(r) < 0:
			break
		await _vend(int(r))
		_refresh()
	ov.queue_free()
	busy = false

## One Vend-O-Matic purchase: DITL 254 asks to confirm; DITL 252 (potions) or DITL 210 say when you can't
## afford it, and STR# 210 when you can't carry any more.  A purchase goes straight into your pack.
func _vend(i: int) -> void:
	var v: Array = VENDING[i]
	var it: Dictionary = (v[2] as Dictionary).duplicate()
	var price: int = int(v[3])
	var gold := int(game.p["gold"])
	var is_food: bool = str(it["kind"]) == "food"
	var nm: String = "ration" if is_food else Data.s("potions", int(it["type"])).capitalize() + " potion"
	var full: bool = game.can_carry(it) != ""
	var poor: bool = gold < price
	var icon: Texture2D = _icon(int(v[0]))
	if poor or full:
		var why: String = Data.s("vending_strings", 3) if (poor and full) else (Data.s("vending_strings", 1) if poor else Data.s("vending_strings", 2))
		if why == "":
			why = "You can't carry any more of these and you don't have enough gold to buy this item." if (poor and full) else ("You don't have enough gold to buy this item." if poor else "You can't carry any more of these.")
		Sfx.play("magic_box_failure")
		await modal("You have %d gold pieces.\nThis %s costs %d gold pieces.  %s" % [gold, nm, price, why], ["Cancel"], icon)
		return
	var r = await modal("You have %d gold pieces.\nThis %s costs %d gold pieces.  Do you want to buy it?" % [gold, nm, price], ["Buy It", "Cancel"], icon)
	if int(r) != 0:
		return
	game.p["gold"] = gold - price
	Sfx.play("gold")
	if not is_food:
		game.identify("potion", int(it["type"]))
	game.give_item(it)

func _list_dialog(text: String, items: Array, cancel: String) -> int:
	var r: Array = await choice_dialog(text, items, ["OK", cancel])
	return -1 if int(r[0]) == 1 else int(r[1])

# ================================================================= special locations
func _feature(f: int, key: String) -> void:
	var L := game.level()
	match f:
		LevelGen.F.CHEST:
			if await _chest(key):
				L["features"].erase(key)       # an emptied chest is gone; one left alone (or with items left) stays
		LevelGen.F.STORE:
			await _store()
		LevelGen.F.FOUNTAIN:
			# the fountain of life (floor 19): one DEATH spell, then it is gone
			Sfx.stop_long()
			await modal("%s, you have drunk from the fountain of life.  By the power of this water you have been given the power of death over one entire level of monsters.  Use it wisely." % game.p["name"], ["OK"], Data.tex("art_1100"))
			game.add_spells(5, 1)
			L["features"].erase(key)
			_refresh()
		LevelGen.F.WELL:
			if await _wishing_well():
				L["features"].erase(key)
		LevelGen.F.TREE:
			pass                     # the tree is used by picking one of its fruit (_pick_fruit)
		LevelGen.F.WIZARD:
			# the wizard's reward (f6_1c1a, DLOG 1301): he speaks (sound 23502), grants failsafe spells
			# (spells are never resisted - g_720f), then disappears
			Sfx.play_id(23502)
			await modal("Greetings student.  You have shown yourself to be worthy of reward.  I grant you the power of failsafe spells.", ["OK"], Data.tex("art_1300"))
			game.p["failsafe_spells"] = true
			L["features"].erase(key)
			_refresh()

		LevelGen.F.MAGIC_BOX:
			pass                     # the box is used through the six buttons on its face (_magic_box)
		LevelGen.F.CRYSTAL:
			var ci: int = int(L["crystal"])
			if ci >= 0 and not game.p["crystals"].has(ci):
				game.p["crystals"].append(ci)
				Sfx.play("crystal_solved")
				await modal("You found %s!" % Data.s("crystals", ci), ["OK"], _icon(9000 + ci))
			L["features"].erase(key)
		LevelGen.F.TOWER:
			await _tower()
		LevelGen.F.VENDING:
			await _vending()
	_refresh()

## The chest, as in the original: DITL 246 ("You have found a treasure chest.  Upon examination you think
## it has a gas trap ..." - Open Chest / Leave Chest), a problem to disarm the trap (or open the lock), then
## the open chest (PICT 247): empty if you failed - after the trap's effect - or holding treasure you click
## to take.  Returns true when the chest was opened (it is then gone).
func _chest(key: String = "") -> bool:
	# a chest you have opened before still holds what you left in it: no trap, no problem
	var Lc: Dictionary = game.level()
	if not Lc.has("chest_items"):
		Lc["chest_items"] = {}
	if key != "" and Lc["chest_items"].has(key):
		var left0: Array = await _open_chest(Data.s("chest_results", 4), Lc["chest_items"][key])
		if left0.is_empty():
			Lc["chest_items"].erase(key)
			return true
		Lc["chest_items"][key] = left0
		return false
	var trap := game.rng.randi_range(0, 4)                 # 0 a lock, 1 gas, 2 arrow, 3 evil feeling, 4 acid
	var free: bool = bool(game.p.get("no_trap", false))   # a "Remove Trap" wish
	if free:
		trap = 0
	Sfx.play("chest")
	var r = await modal("You have found a treasure chest.  Upon examination you think it has %s.  You can try to open the chest or leave it." % Data.s("chest_traps", trap), ["Open Chest", "Leave Chest"], _icon(246))
	if int(r) != 0:
		return false
	var ok := true
	if free:
		game.p["no_trap"] = false
	else:
		ok = await ask_problem(Data.s("chest_traps", 6) if trap == 0 else Data.s("chest_traps", 5))
	if not ok:
		Sfx.play("trap")
		var effect := ""
		match trap:
			1:
				effect = Data.s("chest_fumes", 0) + Data.s("chest_fumes", 1)
				game.p["armor"]["bonus"] = int(game.p["armor"]["bonus"]) - 1
			2:
				if game.rng.randi_range(1, 25) < int(game.p.get("lk", 12)):      # lucky
					effect = Data.s("chest_arrow", 4) + Data.s("chest_arrow", game.rng.randi_range(0, 3))
				else:
					effect = Data.s("chest_arrow", 5)
					game.hurt(game.rng.randi_range(2, 8))
			3:
				var which := game.rng.randi_range(1, 2)
				effect = Data.s("chest_curse", 0) + Data.s("chest_curse", which)
				var slot := "armor" if which == 1 else "sword"
				game.p[slot]["bonus"] = int(game.p[slot]["bonus"]) - 1
			4:
				if game.rng.randi_range(1, 25) < int(game.p.get("lk", 12)):      # lucky
					effect = Data.s("chest_acid", 3) + Data.s("chest_acid", game.rng.randi_range(0, 2))
				else:
					effect = Data.s("chest_acid", 4)
					game.hurt(game.rng.randi_range(1, 4))
		_refresh()
		await _open_chest("%s.  %s" % [Data.s("chest_results", 1 if trap == 0 else 0), effect.strip_edges()], [])
		return true
	var loot: Array = game.chest_contents()
	var left: Array = await _open_chest("%s.  %s" % [Data.s("chest_results", 3 if trap == 0 else 2), Data.s("chest_results", 4)], loot)
	if left.is_empty() or key == "":
		return true
	Lc["chest_items"][key] = left      # what you leave stays in the chest (the original keeps it for the floor)
	return false

## The open chest (PICT 247) under a line of text; each item in it is a button - clicking one asks
## "You found ... Do you want it?" just as on the floor.  Done closes it.
func _open_chest(text: String, loot: Array) -> Array:
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 560, 330))
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	ov.add_child(panel)
	var l := MacUI.label(text)
	l.position = Vector2(16, 10)
	l.size = Vector2(528, 40)
	panel.add_child(l)
	var pic := TextureRect.new()
	pic.texture = Data.tex("art_247")
	pic.position = Vector2(16, 56)
	pic.size = Vector2(407, 241)
	panel.add_child(pic)
	# up to ten things (the original's ten item slots), laid out in the chest
	var slots := [Vector2(40, 30), Vector2(130, 30), Vector2(220, 30), Vector2(310, 30), Vector2(40, 100), Vector2(130, 100),
		Vector2(220, 100), Vector2(310, 100), Vector2(85, 160), Vector2(265, 160)]
	var buttons: Array = []
	for i in loot.size():
		var b := TextureButton.new()
		b.texture_normal = _item_icon(loot[i])
		b.ignore_texture_size = true
		b.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
		b.size = Vector2(36, 36)
		_grab_cursor(b)
		b.position = pic.position + slots[i]
		b.pressed.connect(_press.bind(b, i))
		panel.add_child(b)
		buttons.append(b)
	_corner_button(panel, "Done", -1)
	while true:
		var r = await _wait_modal(ov)
		var i := int(r)
		if i < 0 or i >= loot.size() or buttons[i] == null:
			break
		var it: Dictionary = loot[i]
		if str(it["kind"]) == "gold":
			game.p["gold"] = int(game.p["gold"]) + int(it["amount"])
			Sfx.play("gold")
			(buttons[i] as Control).queue_free()
			buttons[i] = null
			_refresh()
			await _timed_note("You picked up a pile of gold containing %d gold pieces." % int(it["amount"]), 3.0)
			continue
		var iname: String = ("a pile of gold containing %d gold pieces" % int(it["amount"])) if str(it["kind"]) == "gold" else game.with_article(game.item_name(it))
		var a = await modal("You found %s.  Do you want it?" % iname, ["Yes", "No"], _item_icon(it))
		if int(a) == 0 and game.can_carry(it) != "":
			await alert(game.can_carry(it))       # it stays in the chest
		elif int(a) == 0:
			if str(it["kind"]) == "gold":
				game.p["gold"] = int(game.p["gold"]) + int(it["amount"])
				Sfx.play("gold")
			else:
				game.give_item(it)
			(buttons[i] as Control).queue_free()
			buttons[i] = null
			_refresh()
	var left: Array = []
	for n in loot.size():
		if buttons[n] != null:
			left.append(loot[n])
	ov.queue_free()
	return left

## The original teleport animation (f4_5cd0) in the 3D view, with the teleport sound (23507) repeating
## for as long as it runs.
func _teleport_fx() -> void:
	var steps := 10
	var step_t := 0.12
	var total := steps * step_t + 0.2
	var slen: float = maxf(0.2, Sfx.length(23507))
	var t0 := Time.get_ticks_msec()
	var next_sound := 0.0
	for i in range(1, steps + 1):
		var el := (Time.get_ticks_msec() - t0) / 1000.0
		if el >= next_sound and el < total:
			Sfx.play_id(23507)
			next_sound = el + slen
		view3d.set_teleport_steps(i)
		await get_tree().create_timer(step_t).timeout
	await get_tree().create_timer(0.2).timeout
	view3d.set_teleport_steps(0)

# ================================================================= the tree of wisdom
## f6_16da: the red fruit of maturity gives two experience levels (each with its level-up dialog); the blue
## fruit of magic gives forty spells, each to a random attack spell.  Then the tree is gone.
func _pick_fruit(key: String, which: String) -> void:
	game.level()["features"].erase(key)
	if which == "maturity":
		await alert("%s, you have just picked the fruit of maturity from the tree of wisdom.  By doing so you have been granted two experience levels.  Use this new power wisely." % game.p["name"], Data.tex("art_1001"))
		for i in 2:
			game.p["xp"] = game.xp_for_next()
			game.add_xp(1)
		await _show_levelups()
	else:
		await alert("%s, you have just picked the fruit of magic from the tree of wisdom.  By doing so you have been granted forty magic spells.  Use this new power wisely." % game.p["name"], Data.tex("art_1002"))
		for i in 40:
			game.add_spells(game.rng.randi_range(0, 4), 1)
	_refresh()

# ================================================================= the magic boxes
## Muldiv's box (PICT 1250, f6_109a) and Divsub's box (PICT 1260, f6_141e): a button press works only when
## random(100) > 60 (otherwise the failure sound, 2049); either way the box is then gone.
func _magic_box(key: String, button: int) -> void:
	var L := game.level()
	var art := int(L.get("boxes", {}).get(key, 1250))
	L["features"].erase(key)
	if L.has("boxes"):
		L["boxes"].erase(key)
	if game.rng.randi_range(1, 100) <= 60:
		Sfx.play_id(2049)
		_on_message("Nothing happens.")
		_refresh()
		return
	if art == 1250:
		await _muldiv(button)
	else:
		await _divsub(button)
	_refresh()

func _muldiv(button: int) -> void:
	var p: Dictionary = game.p
	match button:
		1:
			Sfx.play_id(2060)
			p["armor"]["bonus"] = int(p["armor"]["bonus"]) + 4
			p["sword"]["bonus"] = int(p["sword"]["bonus"]) + 4
			p["hp"] = int(p["hp"]) + game.rng.randi_range(11, 30)
			p["maxhp"] = int(p["hp"])
			_on_message("Your armor and sword glow brightly (+4), and you feel much healthier.")
		2:
			Sfx.play_id(2070)
			p["armor"]["bonus"] = int(p["armor"]["bonus"]) - 4
			p["sword"]["bonus"] = int(p["sword"]["bonus"]) - 4
			p["hp"] = maxi(2, int(p["hp"]) - (game.rng.randi_range(1, 10) - 5))
			p["maxhp"] = int(p["hp"])
			_on_message("Your armor and sword darken (-4).")
		3:
			# everything is lost; one ration is left, and the crystals are hidden again on their floors
			Sfx.play_id(2050)
			p["pack"] = []
			p["gold"] = 0
			p["rations"] = 1
			p["armor"] = {"type": -1, "bonus": 0}
			p["sword"] = {"type": 5, "bonus": 0}
			p["shield"] = {"type": -1, "bonus": 0}
			for slot in ["ring", "helm", "amulet"]:
				p[slot] = null
			p["crystals"] = []
			game.rehide_crystals()
			_on_message("Everything you owned has vanished - even your crystals, which are hidden in the castle once more.")
		4:
			var to := clampi(game.depth + (10 if game.rng.randi_range(0, 1) == 0 else -10), 1, GameState.MAX_DEPTH)
			await _teleport_fx()
			if to != game.depth:
				game.enter_level(to, to < game.depth)
			_on_message("You are swept to level %d." % game.depth)
		5:
			Sfx.play_id(2090)
			for s in 5:
				game.add_spells(s, 10 + game.depth)
			_on_message("You receive %d of each attack spell." % (10 + game.depth))
		6:
			Sfx.play_id(3000)
			for k in ["str", "dex", "iq", "lk"]:
				p[k] = int(p.get(k, 12)) + 3
			_on_message("Your strength, dexterity, IQ and luck each rise by 3.")

func _divsub(button: int) -> void:
	var p: Dictionary = game.p
	var L := game.level()
	match button:
		1:
			Sfx.play_id(3010)
			p["gold"] = int(p["gold"]) + 3000
			_on_message("You receive 3000 gold pieces.")
		2:
			Sfx.play_id(3020)
			p["pack"] = (p["pack"] as Array).filter(func(x): return not ["ring", "helm", "amulet"].has(str(x["kind"])))
			for slot in ["ring", "helm", "amulet"]:
				p[slot] = null
			_on_message("All your rings, helms and amulets have vanished.")
		3:
			# the floor is emptied: its monsters, items and points of interest vanish (the crystal, the
			# store and the stairs stay, so the game can still be finished)
			Sfx.play_id(3030)
			L["monsters"] = []
			L["items"] = {}
			for fk in (L["features"] as Dictionary).keys():
				if not (int(L["features"][fk]) in [LevelGen.F.CRYSTAL, LevelGen.F.STORE, LevelGen.F.TOWER]):
					L["features"].erase(fk)
			game.end_fight()
			_on_message("Everything on this level has vanished.")
		4:
			# "Teleport to what level?" (DITL 211); no sound here (the original's was a bug)
			var r: Array = await modal("Teleport to what level?  (1 to %d)" % GameState.MAX_DEPTH, ["OK"], null, true)
			var txt := str(r[1]).strip_edges()
			var to: int = clampi(int(txt) if txt.is_valid_int() else game.depth, 1, GameState.MAX_DEPTH)
			await _teleport_fx()
			if to != game.depth:
				game.enter_level(to, to < game.depth)
		5:
			Sfx.play_id(3050)
			for m in L["monsters"]:
				m["hp"] = int(m["hp"]) * 2
				m["maxhp"] = int(m["maxhp"]) * 2
			_on_message("You feel a chill: the monsters on this level have grown stronger.")
		6:
			# every open door on this floor is locked again (its problem is asked when you reach it)
			Sfx.play_id(3060)
			var n := 0
			var edges: Dictionary = L.get("edges", {})
			for ek in edges.keys():
				if int(edges[ek]) == LevelGen.E.DOOR:
					edges[ek] = LevelGen.E.LOCKED
					n += 1
			_on_message("%d door%s on this level %s locked again." % [n, "" if n == 1 else "s", "is" if n == 1 else "are"] if n > 0 else "Nothing seems to happen.")

# ================================================================= the wishing well
## As in the original: DITL 401 asks whether to drop in a gold piece; then (sound 23501) DLOG 1200, "What do
## you wish you had?", lists every potion, scroll, wand, ring, helm, amulet, armor, sword and shield
## (f6_17fa builds it from those item ranges).  OK needs a selection; the wish is always granted - there is
## no chance roll - with the "wish granted" picture (DLOG 1202) and sound 23500, and the item appears on the
## floor in front of you.  Returns true when a wish was made (the well is then gone).
func _wishing_well() -> bool:
	Sfx.play_id(23501)
	var items: Array = []
	for k in ["potion", "scroll", "wand", "ring", "helm", "amulet"]:
		for t in Data.list(k + "s").size():
			var it := {"kind": k, "type": t}
			if k == "wand":
				it["charges"] = 1
			items.append(it)
	for k in ["armor", "sword", "shield"]:
		for t in 5:
			items.append({"kind": k, "type": t, "bonus": 0})
	# DLOG 1200 at its original size and layout: the question, the scrolling list, OK
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 372, 174))
	ov.add_child(panel)
	var title := MacUI.label("What do you wish you had?", 13)
	title.position = Vector2(18, 4)
	title.size = Vector2(304, 46)
	panel.add_child(title)
	var list := ItemList.new()
	list.position = Vector2(35, 52)
	list.size = Vector2(206, 112)
	list.add_theme_font_size_override("font_size", 12)
	for it in items:
		list.add_item(_wish_name(it))
		list.set_item_tooltip(list.item_count - 1, _describe(it, true))
	_style_list(list)
	panel.add_child(list)
	_dlg_button(panel, "OK", Rect2(300, 144, 52, 22), 0)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	list.item_activated.connect(func(_i): modal_done.emit(0))
	var pick := -1
	while pick < 0:
		await _wait_modal(ov)
		var sel: PackedInt32Array = list.get_selected_items()
		if not sel.is_empty():
			pick = sel[0]               # OK only counts once something is selected
	ov.queue_free()
	var wish: Dictionary = items[pick]
	game.identify(str(wish["kind"]), int(wish.get("type", 0)))
	Sfx.play_id(23500)
	await modal("", ["OK"], Data.tex("art_1202"))
	# the wished-for item appears where you stand (as in the original - the well is gone anyway)
	game.put_item("%d,%d" % [int(game.p["x"]), int(game.p["y"])], wish)
	_refresh()
	return true

## The well's list names things the way the original does: "good luck potion", "cotton scroll"-style
## "name + kind" for magic items, plain names for armor and swords, "leather shield" for shields.
func _wish_name(it: Dictionary) -> String:
	var k := str(it["kind"])
	var t := int(it.get("type", 0))
	match k:
		"potion", "scroll", "wand", "ring", "helm", "amulet":
			return "%s %s" % [Data.s(k + "s", t), k]
		"armor":
			return Data.s("armors", t)
		"sword":
			return Data.s("swords", t)
		"shield":
			var sn := Data.s("shields", t)
			return sn if sn.to_lower().ends_with("shield") else sn + " shield"
	return game.item_name(it, true)

# ================================================================= the wishing well's old category dialog (DITL 403)
## "What are you wishing for?" with the original's ten buttons at their DITL 403 positions.
## Returns the button's label, or "" if the dialog was closed some other way.
func _wish_dialog() -> String:
	var dl: Array = Data.art.get("DITL", {}).get("403", [])
	var dlog: Dictionary = Data.art.get("DLOG", {}).get("403", {})
	var dr: Array = dlog.get("rect", [106, 158, 281, 458])
	var sz := Vector2(float(dr[3]) - float(dr[1]), float(dr[2]) - float(dr[0]))
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(((MacUI.SCREEN - sz) / 2.0).floor(), sz))
	ov.add_child(panel)
	var labels: Array = []
	for it in dl:
		var r: Array = it["rect"]
		var rect := Rect2(float(r[1]), float(r[0]), float(r[3]) - float(r[1]), float(r[2]) - float(r[0]))
		match str(it["type"]):
			"button":
				_dlg_button(panel, str(it.get("text", "")), rect, labels.size())
				labels.append(str(it.get("text", "")))
			"statText":
				var l := MacUI.label(str(it.get("text", "")))
				l.position = rect.position
				l.size = rect.size + Vector2(40, 0)
				panel.add_child(l)
	_pad(panel)
	var res = await _wait_modal(ov)
	ov.queue_free()
	var i := int(res)
	return str(labels[i]) if i >= 0 and i < labels.size() else ""

## What each wish grants.  APPROX: the original's handler for DLOG 403 was not found, so each
## button gives what its label names (helpful items only; armour / sword one grade better).
func _grant_wish(wish: String) -> void:
	var before: Array = game.p["pack"].duplicate()
	match wish:
		"Remove Monster":
			var mons: Array = game.level()["monsters"]
			var target := game.engaged_monster()
			if target.is_empty() and mons.size() > 0:
				var best := 99999
				for mm in mons:
					var dd: int = absi(int(mm["x"]) - int(game.p["x"])) + absi(int(mm["y"]) - int(game.p["y"]))
					if dd < best:
						best = dd
						target = mm
			if not target.is_empty():
				var md: Dictionary = Data.monsters()[int(target["idx"])]
				mons.erase(target)
				_on_message("The %s vanishes." % str(md["name"]))
		"Remove Trap":
			game.p["no_trap"] = true
			_on_message("The next chest you open will not be trapped.")
		"Scroll":
			var s: Array = STORE_SCROLLS[game.rng.randi_range(0, STORE_SCROLLS.size() - 1)]
			game.give_item({"kind": "scroll", "type": int(s[0])})
		"Potion":
			var pt: Array = STORE_POTIONS[game.rng.randi_range(0, STORE_POTIONS.size() - 1)]
			game.give_item({"kind": "potion", "type": int(pt[0])})
		"Wand":
			var wt: Array = STORE_WANDS[game.rng.randi_range(0, STORE_WANDS.size() - 1)]
			game.give_item({"kind": "wand", "type": int(wt[0]), "charges": 1})
		"Ring":
			var rg: Array = STORE_RINGS[game.rng.randi_range(0, STORE_RINGS.size() - 1)]
			game.give_item({"kind": "ring", "type": int(rg[0])})
		"Helm":
			var hm: Array = STORE_HELMS[game.rng.randi_range(0, STORE_HELMS.size() - 1)]
			game.give_item({"kind": "helm", "type": int(hm[0])})
		"Amulet":
			var am: Array = STORE_AMULETS[game.rng.randi_range(0, STORE_AMULETS.size() - 1)]
			game.give_item({"kind": "amulet", "type": int(am[0])})
		"Armor":
			var at: int = int(game.p["armor"]["type"])
			game.p["armor"] = {"type": mini(4, at + 1), "bonus": 0}
			_on_message("You are now wearing %s." % Data.s("armors", mini(4, at + 1)))
		"Sword":
			var stp: int = int(game.p["sword"]["type"])
			var better: int = 4 if stp >= 4 else maxi(0, stp - 1)
			game.p["sword"] = {"type": better, "bonus": 0}
			_on_message("You are now carrying %s." % game.with_article(Data.s("swords", better)))
	for it in game.p["pack"]:
		if not before.has(it):
			game.identify(str(it["kind"]), int(it.get("type", 0)))
	_refresh()

# ================================================================= the Tower of Jewels (endgame)
const TOWER_TEXT := "You are entering the tower of the jewel of knowledge.  It was here that the masters of old locked away the key to the mysteries of life.  But you have shown your worthiness to attempt the unlocking of those secrets by reaching this point.  Have courage and keep your wits as you solve the final riddles to bring the crystals together to form the all powerful jewel.  Good luck and may your quest be successful."

## The Tower of Jewels: the stairs up from the top floor.  Without all four crystals you are turned
## away (DITL 9999); otherwise the "Congratulations!!" panel (Enter / Go back), then the tower room
## (PICT 129) where a problem places each crystal in the formation (STR# 211); the fourth forms the jewel.
func _tower() -> void:
	var have: Array = game.p["crystals"]
	if have.size() < 4:
		var missing := ""
		for ci in 4:
			if not have.has(ci):
				missing = Data.s("crystals", ci)
				break
		await alert("Sorry %s, you do not have all the crystals yet.  You can't enter the tower of the jewel until you retrieve the last %s." % [game.p["name"], missing], _icon(9999))
		return
	if not await _tower_welcome():
		return
	# the tower room (PICT 129, at its own size) stays on screen; each crystal floats above the table,
	# forming a diamond: red on the left, blue below, green on the right, the last one on top
	var room := _overlay()
	room.mouse_filter = Control.MOUSE_FILTER_IGNORE
	layer_game.visible = false          # the game's windows are hidden inside the tower
	var pic := TextureRect.new()
	pic.texture = Data.tex("art_129")
	var psz: Vector2 = pic.texture.get_size() if pic.texture else Vector2(447, 323)
	pic.size = psz
	pic.position = ((MacUI.SCREEN - psz) / 2.0).floor()
	var pframe := Panel.new()
	var pfsb := StyleBoxFlat.new()
	pfsb.bg_color = Color.BLACK
	pframe.add_theme_stylebox_override("panel", pfsb)
	pframe.mouse_filter = Control.MOUSE_FILTER_IGNORE
	pframe.position = pic.position - Vector2(1, 1)
	pframe.size = psz + Vector2(2, 2)
	room.add_child(pframe)
	room.add_child(pic)
	var spots := [Vector2(0.43, 0.36), Vector2(0.505, 0.45), Vector2(0.575, 0.36), Vector2(0.505, 0.27)]
	var gems: Array = []
	var placed := 0
	while placed < 4:
		var ok: bool = await ask_problem("put the next crystal in the formation")
		if not ok:
			var again = await modal("The crystal did not go into place.  Try again?", ["Try Again", "Leave"])
			if int(again) == 1:
				room.queue_free()
				layer_game.visible = true
				return
			continue
		var gem := TextureRect.new()
		gem.texture = _icon(9000 + placed)
		gem.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		gem.size = Vector2(22, 22)
		var sp: Vector2 = spots[placed]
		gem.position = pic.position + Vector2(psz.x * sp.x, psz.y * sp.y) - gem.size / 2.0
		room.add_child(gem)
		gems.append(gem)
		var slen: float = Sfx.play_len("crystal_solved")
		placed += 1
		# the next problem (or, after the fourth, the jewel) waits until this sound has finished
		await get_tree().create_timer(maxf(0.5, slen)).timeout
	# the jewel forms where the crystals float (PICT 2501-2516, cycling while the sound plays)
	await get_tree().create_timer(0.6).timeout
	for g in gems:
		(g as Control).queue_free()
	var jewel := TextureRect.new()
	jewel.position = pic.position + Vector2(psz.x * 0.505, psz.y * 0.34) - Vector2(60, 65)
	jewel.size = Vector2(120, 130)
	room.add_child(jewel)
	game.won = true
	# every other sound stops; the jewel's sound (23510) plays three times while it spins
	Sfx.stop_all()
	var fr := 0
	for rep_n in 3:
		Sfx.play_id(23510)
		var dur: float = maxf(0.5, Sfx.length(23510))
		var t0 := Time.get_ticks_msec()
		while Time.get_ticks_msec() - t0 < int(dur * 1000.0):
			jewel.texture = Data.tex("art_%d" % (2501 + fr % 16))
			fr += 1
			await get_tree().create_timer(0.12).timeout
	await alert("%s, you have proven yourself to be wise, bold, intelligent and trustworthy.  For all of your effort I am safely transporting you back to the first level.  Good luck in your next adventure." % game.p["name"], _icon(2005))
	room.queue_free()
	layer_game.visible = true
	game.new_adventure()
	_refresh()

## The "Congratulations!!" panel: pink, rounded, with a gold border; Enter or Go back.
func _tower_welcome() -> bool:
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 430, 452))
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	ov.add_child(panel)
	var card := Panel.new()
	var sb := StyleBoxFlat.new()
	sb.bg_color = Color(1.0, 0.85, 0.85)
	sb.border_color = Color(0.85, 0.65, 0.15)
	sb.set_border_width_all(2)
	sb.set_corner_radius_all(18)
	card.add_theme_stylebox_override("panel", sb)
	card.position = Vector2(12, 12)
	card.size = Vector2(406, 380)
	panel.add_child(card)
	var head := MacUI.label("Congratulations!!", 15)
	head.position = Vector2(26, 14)
	head.size = Vector2(360, 24)
	card.add_child(head)
	var body := MacUI.label(TOWER_TEXT, 14)
	body.position = Vector2(26, 46)
	body.size = Vector2(356, 320)
	body.horizontal_alignment = HORIZONTAL_ALIGNMENT_FILL
	card.add_child(body)
	var enter := _mac_button("Enter", 0, true)
	enter.size = enter.custom_minimum_size
	enter.position = Vector2(70, 408)
	panel.add_child(enter)
	var back := _mac_button("Go back", 1, false)
	back.size = back.custom_minimum_size
	back.position = Vector2(panel.size.x - 70 - back.size.x, 408)
	panel.add_child(back)
	var r = await _wait_modal(ov)
	ov.queue_free()
	return int(r) == 0

func _deduction(reason: String, pic: Texture2D) -> bool:
	var names: Array = []
	for cn in Data.list("colors").slice(0, 6):
		names.append(str(cn).capitalize())
	var code := Puzzles.deduction_code(game.rng, 4, 6)
	var history := ""
	for attempt in 8:
		var guess: Array = []
		while guess.size() < 4:
			var shown := ""
			for g in guess:
				shown += str(names[g]) + " "
			var r = await modal("%s, find the hidden order of 4 colours.\n(exact = right colour & place, near = right colour, wrong place)\n\nTry %d of 8.  Your guess so far: %s\n\n%s" % [reason, attempt + 1, shown, history], names, pic)
			if int(r) <= -900:
				return false
			guess.append(int(r))
		var sc := Puzzles.score_guess(code, guess)
		var gs := ""
		for g in guess:
			gs += str(names[g]) + " "
		history += "%s →  exact %d, near %d\n" % [gs, sc[0], sc[1]]
		if int(sc[0]) == 4:
			return true
	var ans := ""
	for c in code:
		ans += str(names[c]) + " "
	await alert("The order was: " + ans)
	return false


# ================================================================= combat windows
func _attack_ahead() -> void:
	if busy or not playing:
		return
	var d: Vector2i = GameState.DIRS[int(game.p["dir"])]
	var here := Vector2i(int(game.p["x"]), int(game.p["y"]))
	var mon := game.monster_here()               # the fight is on your own space
	if mon.is_empty():
		mon = game.monster_at(here.x + d.x, here.y + d.y)
		if mon.is_empty() or not game.open_between(here, here + d):
			return
	busy = true
	# sword swing: the combat loop f3_6232 draws cicn 132 + frame (133, 134, 135) with f7_1a72;
	# combat sound 2000
	# f3_6232: a swing type 1-3 picks the sword (cicn 132 + type) and the rect's start offset
	# ((+70,+70), (-70,+70), (0,+70)); it is redrawn as it travels, Delay(g_67d8 / 4) per step.
	Sfx.play_id(2000)
	var swing := game.rng.randi_range(1, 3)
	var start: Vector2 = [Vector2(-70, -70), Vector2(70, -70), Vector2(0, -70)][swing - 1]
	view3d.effect = _icon(132 + swing)
	for step in 6:
		view3d.effect_offset = start.lerp(Vector2(-start.x, -start.y) * 0.3, float(step) / 5.0)
		view3d.queue_redraw()
		await get_tree().create_timer(FRAME_TICKS / 5.0 / 60.0).timeout
	view3d.effect = null
	view3d.effect_offset = Vector2.ZERO
	game.attack(mon)
	if pending_kill.size() > 0:
		await _show_kill()
	busy = false
	_after_turn()

## Spell list beside the 3D view: one figure per known spell (Hurtem, Painus, ...).
func _known_spells() -> int:
	var sc: Array = game.spell_counts()
	var n := 0
	for i in sc.size():
		if int(sc[i]) > 0:
			n = i + 1
	return n

## The spells you hold (a charge or more), in order - one row each in the Spells window.
func _held_spells() -> Array:
	var out: Array = []
	if game.p.is_empty():
		return out
	var sc: Array = game.spell_counts()
	for i in sc.size():
		if int(sc[i]) > 0:
			out.append(i)
	return out

## The Spells and Wands windows keep their width; their height follows what they list.
func _fit_side_windows() -> void:
	if w_spells == null or game.p.is_empty():
		return
	w_spells.set_body_size(Vector2(SIDE_W, maxf(8.0, _held_spells().size() * 40.0 + 4.0)))
	w_weapon.set_body_size(Vector2(SIDE_W, maxf(8.0, _wand_indices().size() * 40.0 + 4.0)))

func _draw_spells() -> void:
	var b := w_spells.body
	if game.p.is_empty():
		return
	var font := get_theme_default_font()
	var held := _held_spells()
	for row in held.size():
		var i: int = held[row]
		var t := _icon(SPELL_ICON)
		var y := 2.0 + row * 40.0
		if t:
			b.draw_texture_rect(t, Rect2(Vector2((SIDE_W - 28.0) / 2.0, y), Vector2(28, 28)), false)
		var cnt := int(game.spell_counts()[i])
		b.draw_string(font, Vector2(0, y + 38), "%s %d" % [Data.s("spell_names", i), cnt], HORIZONTAL_ALIGNMENT_CENTER, SIDE_W, 8, Color.BLACK)

func _spells_input(event: InputEvent) -> void:
	var mb := event as InputEventMouseButton
	if mb == null or not mb.pressed or mb.button_index != MOUSE_BUTTON_LEFT or busy or not playing or mb.double_click:
		return
	var row := int((mb.position.y - 2) / 40)
	var held := _held_spells()
	if row >= 0 and row < held.size():
		await _cast(int(held[row]))

## Wand window (WIND 132 template, f3_72ec): one row per wand carried (up to five) with its
## metal; click a wand to shoot it.
func _wand_indices() -> Array:
	var out: Array = []
	for i in game.p["pack"].size():
		if game.p["pack"][i]["kind"] == "wand":
			out.append(i)
	return out.slice(0, GameState.MAX_WANDS)

func _draw_weapon() -> void:
	var b := w_weapon.body
	if game.p.is_empty():
		return
	var t := _icon(1231)
	var font := get_theme_default_font()
	var n := 0
	for wi in _wand_indices():
		var y := 2.0 + n * 40.0
		if t:
			b.draw_texture_rect(t, Rect2(Vector2((SIDE_W - 28.0) / 2.0, y), Vector2(28, 28)), false)
		var w: Dictionary = game.p["pack"][wi]
		var metal: String = game.alias_word(w) if not game.is_known(w) else Data.s("wands", int(w["type"]))
		b.draw_string(font, Vector2(0, y + 38), metal, HORIZONTAL_ALIGNMENT_CENTER, SIDE_W, 8, Color.BLACK)
		n += 1

func _weapon_input(event: InputEvent) -> void:
	var mb := event as InputEventMouseButton
	if mb == null or not mb.pressed or mb.button_index != MOUSE_BUTTON_LEFT or busy or not playing or mb.double_click:
		return
	var row := int((mb.position.y - 2) / 40)
	var wands := _wand_indices()
	if row >= 0 and row < wands.size():
		await _fire_wand(int(wands[row]))

## "FANTASTIC WORK! ..." level-up dialog with the king's portrait (cicn 2005) and a gold reward.
func _on_leveled(new_level: int) -> void:
	# remember this level-up's details now (another may follow at once, e.g. the fruit of maturity)
	pending_levels.append({"level": new_level, "title": game.title_for(new_level),
		"next": game.title_for(mini(new_level + 1, GameState.MAX_LEVEL)), "need": maxi(0, game.xp_for_next() - int(game.p["xp"]))})

func _show_levelups() -> void:
	while pending_levels.size() > 0:
		await _levelup_dialog(pending_levels.pop_front())

func _levelup_dialog(info) -> void:
	var lv: int = int(info["level"]) if info is Dictionary else int(info)
	var title: String = str(info["title"]) if info is Dictionary else game.title_for(lv)
	var next_title: String = str(info["next"]) if info is Dictionary else game.title_for(mini(lv + 1, GameState.MAX_LEVEL))
	var need: int = int(info["need"]) if info is Dictionary else maxi(0, game.xp_for_next() - int(game.p["xp"]))
	var reward := 100 * lv               # f2_7b7a: 100 x the new level
	game.p["hp"] = game.p["maxhp"]          # a level-up restores full health
	Sfx.play("uplevel")
	game.p["gold"] = int(game.p["gold"]) + reward
	await alert("FANTASTIC WORK!  %s, You have just reached the level of %s.  You need %d more experience points to reach the level of %s.  As a reward I'm also giving you some gold to further your quest." % [game.p["name"], title, need, next_title], _icon(2005))
	_refresh()

## Spell casting with the original effect animation (f3_0b2a): sound 2041, effect frames
## cicn 20000-20002 held 3 x g_67d8 ticks each, then 20002-20006 held g_67d8 ticks each
## (g_67d8 = the CPU-speed frame delay; 6 ticks here).  Input is blocked meanwhile.
const FRAME_TICKS := 6

func _cast(tier: int) -> void:
	if busy or not playing:
		return
	if tier != 5 and not _in_combat():
		busy = true
		await alert("You can only cast that spell during combat.")
		busy = false
		return
	if tier == 5:
		if int(game.spell_counts()[5]) <= 0:
			return
		busy = true
		game.add_spells(5, -1)
		game.end_fight()
		Sfx.play_id(23554)
		await alert("All monsters on this floor have been vanquished.")
		game.vanquish_all()
		busy = false
		_refresh()
		return
	busy = true
	var d: Vector2i = GameState.DIRS[int(game.p["dir"])]
	var target := game.monster_here()
	if target.is_empty():
		target = game.monster_at(int(game.p["x"]) + d.x, int(game.p["y"]) + d.y)
	var have: int = int(game.spell_counts()[tier]) if tier >= 0 else int(game.p["spells"])
	if have > 0 and not target.is_empty():
		pass                    # (no "click on the monster" prompt: the spell is cast at once)
		for f in [20000, 20001, 20002]:
			view3d.effect = _icon(f)
			view3d.queue_redraw()
			await get_tree().create_timer(3.0 * FRAME_TICKS / 60.0).timeout
		for f in [20002, 20003, 20004, 20005, 20006]:
			view3d.effect = _icon(f)
			view3d.queue_redraw()
			await get_tree().create_timer(FRAME_TICKS / 60.0).timeout
		view3d.effect = null
	game.cast_spell(tier)
	if pending_kill.size() > 0:
		await _show_kill()
	busy = false
	_after_turn()

# ================================================================= puzzle dialogs
## Counting: a row of identical monster pictures; type how many.  Returns 1/0/-1(cancel).
func _counting_dialog(intro: String, pr: Dictionary) -> int:
	var ov := _overlay()
	var n: int = int(pr["count"])
	var per_row := 8
	var rows := (n + per_row - 1) / per_row
	var h := 150.0 + rows * 44.0
	var panel := MacUI.dialog_panel(Rect2(170, 110, 460, h))
	ov.add_child(panel)
	var l := MacUI.label(intro + "\n" + str(pr["question"]))
	l.position = Vector2(4, 2)
	l.size = Vector2(340, 56)
	panel.add_child(l)
	var icon := Data.monster_icon(int(pr["monster_id"]))
	for i in n:
		var tr := TextureRect.new()
		tr.texture = icon
		tr.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		tr.size = Vector2(36, 36)
		tr.position = Vector2(8 + (i % per_row) * 50, 72 + (i / per_row) * 44)
		panel.add_child(tr)
	var le := LineEdit.new()
	le.position = Vector2(370, 12)
	le.size = Vector2(70, 22)
	panel.add_child(le)
	le.text_submitted.connect(func(_t): modal_done.emit(0))
	MacUI.default_button(_dlg_button(panel, "OK", Rect2(300, h - 32, 64, 20), 0))
	_dlg_button(panel, "Cancel", Rect2(376, h - 32, 64, 20), 1)
	_refocus.call_deferred(le)
	_pad(panel)
	var r = await _wait_modal(ov)
	var ans := le.text
	ov.queue_free()
	if int(r) == 1:
		return -1
	return 1 if Puzzles.check(pr, ans) else 0

## Coin grid: click a coin on the right, then a square.  Moves are limited to 4 + 2.
func _coin_dialog(intro: String, pr: Dictionary) -> int:
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(180, 90, 440, 300))
	ov.add_child(panel)
	var l := MacUI.label(intro)
	l.position = Vector2(14, 8)
	l.size = Vector2(410, 50)
	panel.add_child(l)
	var cells: Array = [0, 0, 0, 0]
	var sel := {"coin": 0, "moves": 6}
	var cell_btns: Array = []
	for i in 4:
		var b := Button.new()
		b.position = Vector2(30 + (i % 2) * 70, 70 + (i / 2) * 70)
		b.size = Vector2(70, 70)
		b.add_theme_font_size_override("font_size", 18)
		var idx := i
		b.pressed.connect(_press.bind(b, 100 + idx))
		panel.add_child(b)
		cell_btns.append(b)
	for r in 2:
		var lab := MacUI.label(Puzzles.cents(int(pr["rows"][r])))
		lab.position = Vector2(176, 96 + r * 70)
		panel.add_child(lab)
	for c in 2:
		var lab2 := MacUI.label(Puzzles.cents(int(pr["cols"][c])))
		lab2.position = Vector2(50 + c * 70, 216)
		panel.add_child(lab2)
	var coin_btns: Array = []
	for k in Puzzles.COINS.size():
		var cb := Button.new()
		cb.text = str(Puzzles.COINS[k])
		cb.position = Vector2(370, 62 + k * 34)
		cb.size = Vector2(44, 30)
		cb.toggle_mode = true
		var kk := k
		cb.pressed.connect(_press.bind(cb, 200 + kk))
		panel.add_child(cb)
		coin_btns.append(cb)
	var moves := MacUI.label("")
	moves.position = Vector2(250, 230)
	panel.add_child(moves)
	MacUI.default_button(_dlg_button(panel, "OK", Rect2(286, 266, 64, 20), 0))
	_dlg_button(panel, "Cancel", Rect2(360, 266, 64, 20), 1)
	_pad(panel)
	while true:
		for i in 4:
			var cbtn: Button = cell_btns[i]
			cbtn.text = "" if int(cells[i]) == 0 else str(cells[i])
		for k in coin_btns.size():
			var kb: Button = coin_btns[k]
			kb.set_pressed_no_signal(k == int(sel["coin"]))
		moves.text = "Moves left\n      %d" % int(sel["moves"])
		var r = await _wait_modal(ov)
		var v := int(r)
		if v == 1 or v <= -900:
			ov.queue_free()
			return -1
		if v == 0:
			break
		if v >= 200:
			sel["coin"] = v - 200
		elif v >= 100 and int(sel["moves"]) > 0:
			cells[v - 100] = Puzzles.COINS[int(sel["coin"])]
			sel["moves"] = int(sel["moves"]) - 1
	ov.queue_free()
	var ok: bool = int(cells[0]) + int(cells[1]) == int(pr["rows"][0]) and int(cells[2]) + int(cells[3]) == int(pr["rows"][1]) \
		and int(cells[0]) + int(cells[2]) == int(pr["cols"][0]) and int(cells[1]) + int(cells[3]) == int(pr["cols"][1]) \
		and not cells.has(0)
	return 1 if ok else 0

## Brain teaser: click + or -, then numbers, to reach the goal.  Clear resets.
func _teaser_dialog(intro: String, pr: Dictionary) -> int:
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(200, 120, 400, 248))
	ov.add_child(panel)
	var l := MacUI.label(intro + "\n" + str(pr["question"]))
	l.position = Vector2(14, 10)
	l.size = Vector2(372, 40)
	panel.add_child(l)
	var goal := MacUI.label("Goal:  %d" % int(pr["goal"]), 16)
	goal.position = Vector2(30, 78)
	panel.add_child(goal)
	var total := MacUI.label("", 16)
	total.position = Vector2(220, 78)
	panel.add_child(total)
	var st := {"sign": 1, "sum": 0, "used": []}
	var nums: Array = pr["nums"]
	var nbtns: Array = []
	for i in nums.size():
		var b := Button.new()
		b.text = str(nums[i])
		b.position = Vector2(30 + i * 62, 158)
		b.size = Vector2(50, 30)
		var idx := i
		b.pressed.connect(_press.bind(b, 100 + idx))
		panel.add_child(b)
		nbtns.append(b)
	_dlg_button(panel, "+", Rect2(30, 118, 40, 24), 10)
	_dlg_button(panel, "-", Rect2(80, 118, 40, 24), 11)
	_dlg_button(panel, "Clear", Rect2(130, 118, 60, 24), 12)
	_dlg_button(panel, "Cancel", Rect2(304, 210, 76, 22), 1)
	_pad(panel)
	while true:
		total.text = "Total:  %d   (%s)" % [int(st["sum"]), "+" if int(st["sign"]) > 0 else "-"]
		var used: Array = st["used"]
		for i in nbtns.size():
			var nb: Button = nbtns[i]
			nb.disabled = used.has(i)
		if int(st["sum"]) == int(pr["goal"]) and used.size() > 0:
			await get_tree().create_timer(0.4).timeout
			ov.queue_free()
			return 1
		var r = await _wait_modal(ov)
		var v := int(r)
		if v == 1 or v <= -900:
			ov.queue_free()
			return -1
		if v == 10:
			st["sign"] = 1
		elif v == 11:
			st["sign"] = -1
		elif v == 12:
			st["sum"] = 0
			st["used"] = []
		elif v >= 100:
			st["sum"] = int(st["sum"]) + int(st["sign"]) * int(nums[v - 100])
			var used2: Array = st["used"]
			used2.append(v - 100)
			if used2.size() == nums.size() and int(st["sum"]) != int(pr["goal"]):
				ov.queue_free()
				return 0
	return 0


# ================================================================= Debug > Dialog Proof
## Cycles through every dialog in the game for layout review.  A bar on top (above any dialog)
## shows the dialog's name and Previous / Next / Quit.  Dialogs closed normally advance to the next.
var _proof_action := ""

func _proof_specs() -> Array:
	var mon: Dictionary = Data.monsters()[3]
	var micon := Data.monster_icon(int(mon["id"]))
	var mname := game.with_article(str(mon["name"]))
	return [
		["Title: name entry", func(): await modal("Please enter the name of your player.", ["OK", "Cancel"], null, true)],
		["Start: attribute points (DLOG 201)", func(): await _attributes()],
		["Start: gold quiz (f2_33a2)", func(): await _money_round()],
		["Problem: multiple choice - state capital", func(): await _proof_problem(Puzzles.capital(game.rng), "unlock and open the door", "")],
		["Problem: multiple choice - word match", func(): await _proof_problem(Puzzles.synonym(game.rng), "unlock and open the door", "")],
		["Problem: arithmetic", func(): await _proof_problem(Puzzles.addition(game.options, game.rng, 0), "unlock and open the door", "")],
		["Problem: word jumble (with Hint)", func(): await _proof_problem(Puzzles.scramble(game.rng, 0, game.options), "unlock and open the door", "")],
		["Problem: counting", func(): await _proof_problem(Puzzles.counting(game.rng, 0), "unlock and open the door", "")],
		["Problem: coin grid", func(): await _proof_problem(Puzzles.coin_grid(game.rng), "unlock and open the door", "")],
		["Problem: brain teaser", func(): await _proof_problem(Puzzles.teaser(game.rng, 0), "unlock and open the door", "")],
		["Problem: healing (Stop Healing)", func(): await _proof_problem(Puzzles.capital(game.rng), "help yourself concentrate so your wounds will heal", "Stop Healing")],
		["Problem: answer was wrong", func(): await alert("Sorry, the correct answer was Sacramento.")],
		["Combat: you have just met (DITL 2000)", func(): await alert("You have just met %s.  Prepare to defend yourself." % mname, micon)],
		["Combat: being attacked (DITL 2075)", func(): await alert("You are being attacked by %s.  Prepare to defend yourself." % mname, micon)],
		["Combat: killed / gold", func(): await alert("You have killed the %s and received 30 pieces of gold." % str(mon["name"]))],
		["Combat: level up (FANTASTIC WORK!)", func(): await alert("FANTASTIC WORK!  Player, You have just reached the level of FIGHTER 3RD CLASS.  You need 40 more experience points to reach the level of FIGHTER 2ND CLASS.  As a reward I'm also giving you some gold to further your quest.", _icon(2005))],
		["Combat: death", func(): await alert(Data.s("killed_messages", 1))],
		["Item: pickup prompt (DITL 248)", func(): await modal("You found a wand of fire.  Do you want it?", ["Yes", "No"], _icon(1231))],
		["Item: chest", func(): await alert("You found a chest with %s." % Data.s("chest_traps", 1), _icon(246))],
		["Item: crystal found", func(): await modal("You found %s!" % Data.s("crystals", 0), ["OK"], _icon(9000))],
		["Item: crystal description", func(): await modal("The Crystal Of Wisdom\n\nOne of the four crystals of the Jewel of Knowledge.  Carry all four to the Tower of Jewels to restore the Jewel.", ["Close"], _icon(9000))],
		["Inventory: select a helm", func(): await choice_dialog("Select a helm.", ["helm of protection", "helm of warrior", "none"], ["Equip", "Drop", "Cancel"], ["Halves the damage monsters do and blocks their special attacks.", "More attacks each round and harder blows.", ""], 0, {1: [2]})],
		["Inventory: select a potion", func(): await choice_dialog("Select a potion.", ["potion of healing", "potion of hercules"], ["Drink It", "Drop It", "Cancel"], ["Heals all of your wounds.", "Increases strength by 2 points."])],
		["Start shop (DITL 209)", func(): await _ditl_shop(209, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: entrance (PICT 4010)", func(): await modal("", ["Enter Store", "Return To Game"], Data.tex("art_4010"))],
		["Store: departments (PICT 4001-4006)", func(): await _departments()],
		["Store: potions (DITL 4001)", func(): await _ditl_shop(4001, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: scrolls (DITL 4002)", func(): await _ditl_shop(4002, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: wands (DITL 4003)", func(): await _ditl_shop(4003, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: shields (DITL 4005)", func(): await _ditl_shop(4005, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: spells (DITL 4006)", func(): await _ditl_shop(4006, [[{}, 0], [{}, 0], [{}, 0], [{}, 0], [{}, 0]])],
		["Store: not enough gold", func(): await modal("You have 1622 gold pieces.\nThis two hand sword costs 3000 gold pieces.  You don't have enough gold to buy this item.", ["Cancel"], _icon(601))],
		["Store: buy confirmation", func(): await modal("You have 1622 gold pieces.\nThis potion of add hit points costs 1400 gold pieces.  Do you want to buy it?", ["Buy It", "Cancel"], _icon(1232))],
		["Vend-O-Matic", func(): await _vending()],
		["Fountain", func(): await modal("You found a magical fountain.  Do you want to drink from it?", ["Drink", "Leave"], Data.tex("art_1100"))],
		["Wishing well (DITL 401)", func(): await modal("You have found a wishing well.  Do you want to drop a gold piece in and make a wish?", ["Yes", "No"], Data.tex("art_1200"))],
		["Wishing well: wish granted (PICT 1202)", func(): await modal("", ["OK"], Data.tex("art_1202"))],
		["Wizard (DLOG 1301)", func(): await modal("Greetings student.  You have shown yourself to be worthy of reward.  I grant you the power of failsafe spells.", ["OK"], Data.tex("art_1300"))],
		["Stairs to the next level", func(): await modal("There is a staircase leading up.  Go up to level 2?", ["Go Up", "Stay"], Data.tex("art_2000"))],
		["Stairs to the previous level", func(): await modal("There is a staircase leading down.  Go down to level 1?", ["Go Down", "Stay"], Data.tex("art_2001"))],
		["Tower of Jewels (crystals missing)", func(): await alert("This is the magical Tower of Jewels.  You must bring all four crystals here to rejoin the Jewel of Knowledge.  You have 1 of the 4 crystals.")],
		["Tower: deduction", func(): await _deduction(Data.s("deduction_reasons", 0), Data.tex("art_2501"))],
		["Status: player progress", func(): await alert("Player, you are a JUNIOR FIGHTER.\n\nExperience: 10 of 20 needed for the next level.\nLevel 1 of the castle.  Crystals found: 0 of 4.")],
		["Status: crystal location", func(): await alert(_crystal_hint())],
		["Options: problem options", func(): await _problem_options()],
		["Options: sound control", func(): await _sound_control()],
		["Help pages", func(): await _help()],
		["About box", func(): await _about_box()],
	]

func _proof_problem(pr: Dictionary, reason: String, cancel_label: String) -> void:
	forced_problem = pr
	await _ask(reason, 0, cancel_label)

func _proof_press(act: String) -> void:
	_proof_action = act
	_skip = true
	modal_done.emit(-999)

func _dialog_proof() -> void:
	if game.p.is_empty():
		game.new_game("Player")
	var specs := _proof_specs()
	var layer := CanvasLayer.new()
	layer.layer = 50
	add_child(layer)
	var bar := Panel.new()
	var sb := StyleBoxFlat.new()
	sb.bg_color = Color(1, 1, 0.85)
	sb.border_color = Color.BLACK
	sb.set_border_width_all(1)
	bar.add_theme_stylebox_override("panel", sb)
	bar.position = Vector2(0, MacUI.MENU_H)
	bar.size = Vector2(MacUI.SCREEN.x, 46)
	bar.theme = theme
	layer.add_child(bar)
	var lab := MacUI.label("", 12)
	lab.autowrap_mode = TextServer.AUTOWRAP_OFF
	lab.position = Vector2(10, 14)
	lab.size = Vector2(500, 18)
	bar.add_child(lab)
	var btns := [["◀ Previous", "prev", 530.0], ["Next ▶", "next", 630.0], ["Quit", "quit", 720.0]]
	for bd in btns:
		var b := Button.new()
		b.text = str(bd[0])
		b.position = Vector2(float(bd[2]), 10)
		b.custom_minimum_size = Vector2(b.size.x, 26)
		b.size = Vector2(88 if bd[1] != "quit" else 66, 22)
		b.pressed.connect(_proof_press.bind(str(bd[1])))
		bar.add_child(b)
	var i := 0
	busy = true
	while true:
		lab.text = "Dialog Proof  %d / %d:  %s" % [i + 1, specs.size(), str(specs[i][0])]
		_proof_action = ""
		_skip = false
		var f: Callable = specs[i][1]
		await f.call()
		await get_tree().process_frame
		if _proof_action == "quit":
			break
		elif _proof_action == "prev":
			i = (i - 1 + specs.size()) % specs.size()
		else:
			i = (i + 1) % specs.size()
	_proof_action = ""
	forced_problem = {}
	layer.queue_free()
	busy = false
	_refresh()


# ================================================================= Debug > Item Spawn
## Every item in the game, by its true name.
func _all_items() -> Array:
	var out: Array = []
	for i in Data.list("potions").size():
		out.append({"kind": "potion", "type": i})
	for i in Data.list("scrolls").size():
		out.append({"kind": "scroll", "type": i})
	for i in Data.list("wands").size():
		out.append({"kind": "wand", "type": i, "charges": 1})
	for k in ["ring", "helm", "amulet"]:
		for i in Data.list(k + "s").size():
			out.append({"kind": k, "type": i})
	for k in ["armor", "sword", "shield"]:
		for i in 5:
			out.append({"kind": k, "type": i, "bonus": 0})
	out.append({"kind": "food"})
	out.append({"kind": "gold", "amount": 100})
	for i in 4:
		out.append({"kind": "crystal", "type": i})
	return out

const SPAWN_KINDS := ["armor", "sword", "shield", "helm", "ring", "amulet", "potion", "scroll", "wand", "food", "gold", "crystal"]

func _spawn_order(a: Dictionary, b: Dictionary) -> bool:
	var ka := SPAWN_KINDS.find(str(a["kind"]))
	var kb := SPAWN_KINDS.find(str(b["kind"]))
	if ka != kb:
		return ka < kb
	if str(a["kind"]) == "armor":
		return int(a["type"]) < int(b["type"])          # robe ... plate mail
	if str(a["kind"]) == "sword":
		return int(a["type"]) > int(b["type"])          # short sword ... two hand sword
	return game.item_name(a, true).naturalnocasecmp_to(game.item_name(b, true)) < 0

## List boxes: black selection with white text, a light hover that keeps the text readable.
func _style_list(list: ItemList) -> void:
	var sel := StyleBoxFlat.new()
	sel.bg_color = Color.BLACK
	var hov := StyleBoxFlat.new()
	hov.bg_color = Color(0.35, 0.35, 0.35)
	for nm in ["selected", "selected_focus", "hovered_selected", "hovered_selected_focus"]:
		list.add_theme_stylebox_override(nm, sel)
	list.add_theme_stylebox_override("hovered", hov)
	list.add_theme_color_override("font_color", Color.BLACK)
	list.add_theme_color_override("font_hovered_color", Color.WHITE)
	list.add_theme_color_override("font_selected_color", Color.WHITE)
	list.add_theme_color_override("font_hovered_selected_color", Color.WHITE)

## Lists every item; "Spawn" puts the selected one on the floor where you stand.
func _item_spawn() -> void:
	if not playing or game.levels.is_empty():
		await alert("Start or open a game first.")
		return
	busy = true
	var items := _all_items()
	items.sort_custom(_spawn_order)
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 360, 420))
	ov.add_child(panel)
	var title := MacUI.label("Item Spawn", 13)
	title.position = Vector2(12, 8)
	title.size = Vector2(320, 20)
	panel.add_child(title)
	var list := ItemList.new()
	list.position = Vector2(12, 34)
	list.size = Vector2(320, 320)
	for it in items:
		var suffix: String = {"armor": " (armor)", "sword": " (weapon)"}.get(str(it["kind"]), "")
		list.add_item(game.item_name(it, true) + suffix)
	if items.size() > 0:
		list.select(0)
	_style_list(list)
	panel.add_child(list)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	var close_b := _corner_button(panel, "Close", -1)
	var spawn_b := _mac_button("Spawn", 1, true)
	spawn_b.size = spawn_b.custom_minimum_size
	spawn_b.position = close_b.position - Vector2(spawn_b.size.x + 10, 0)
	panel.add_child(spawn_b)
	list.item_activated.connect(func(_i): modal_done.emit(1))
	while true:
		var r = await _wait_modal(ov)
		if int(r) != 1:
			break
		var sel: PackedInt32Array = list.get_selected_items()
		if sel.is_empty():
			continue
		var it: Dictionary = (items[sel[0]] as Dictionary).duplicate(true)
		var key := "%d,%d" % [int(game.p["x"]), int(game.p["y"])]
		game.put_item(key, it)
		_on_message("Spawned %s." % game.with_article(game.item_name(it, true)))
		_refresh()
	ov.queue_free()
	busy = false
	_refresh()


# ================================================================= Debug > POI Spawn
const SPAWN_POIS := [["Chest", LevelGen.F.CHEST, 0], ["Divsub's magic box", LevelGen.F.MAGIC_BOX, 1260],
	["Fountain", LevelGen.F.FOUNTAIN, 0], ["Muldiv's magic box", LevelGen.F.MAGIC_BOX, 1250],
	["Tree", LevelGen.F.TREE, 0], ["Vend-O-Matic", LevelGen.F.VENDING, 0],
	["Wishing well", LevelGen.F.WELL, 0], ["Wizard", LevelGen.F.WIZARD, 0]]

## Lists every point of interest; "Spawn" puts the selected one on your space (replacing any there).
## It is drawn at the bottom of the 3D view; click it to use it.
func _poi_spawn() -> void:
	if not playing or game.levels.is_empty():
		await alert("Start or open a game first.")
		return
	busy = true
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 300, 300))
	ov.add_child(panel)
	var title := MacUI.label("POI Spawn", 13)
	title.position = Vector2(12, 8)
	title.size = Vector2(260, 20)
	panel.add_child(title)
	var list := ItemList.new()
	list.position = Vector2(12, 34)
	list.size = Vector2(260, 200)
	for pd in SPAWN_POIS:
		list.add_item(str(pd[0]))
	list.select(0)
	_style_list(list)
	panel.add_child(list)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	var close_b := _corner_button(panel, "Close", -1)
	var spawn_b := _mac_button("Spawn", 1, true)
	spawn_b.size = spawn_b.custom_minimum_size
	spawn_b.position = close_b.position - Vector2(spawn_b.size.x + 10, 0)
	panel.add_child(spawn_b)
	list.item_activated.connect(func(_i): modal_done.emit(1))
	while true:
		var r = await _wait_modal(ov)
		if int(r) != 1:
			break
		var sel: PackedInt32Array = list.get_selected_items()
		if sel.is_empty():
			continue
		var pd: Array = SPAWN_POIS[sel[0]]
		var L: Dictionary = game.level()
		var key := "%d,%d" % [int(game.p["x"]), int(game.p["y"])]
		L["features"][key] = int(pd[1])                  # one point of interest per space
		if int(pd[1]) == LevelGen.F.MAGIC_BOX:
			if not L.has("boxes"):
				L["boxes"] = {}
			L["boxes"][key] = int(pd[2])
		_on_message("Spawned %s here." % str(pd[0]).to_lower())
		_refresh()
	ov.queue_free()
	busy = false
	_refresh()


# ================================================================= Debug > Go To Floor
## Asks for a floor (1 .. MAX_DEPTH) and moves you there as if you had just climbed the stairs from the
## floor below: in front of the staircase back down - or, on floor 1, outside Subadd's store.
func _go_to_floor() -> void:
	if not playing or game.levels.is_empty():
		await alert("Start or open a game first.")
		return
	busy = true
	var r: Array = await modal("Go to which floor?  (1 to %d)" % GameState.MAX_DEPTH, ["OK", "Cancel"], null, true)
	busy = false
	if int(r[0]) != 0:
		return
	var txt := str(r[1]).strip_edges()
	if not txt.is_valid_int() or int(txt) < 1 or int(txt) > GameState.MAX_DEPTH:
		await alert("Please enter a floor number from 1 to %d." % GameState.MAX_DEPTH)
		return
	game.end_fight()
	game.enter_level(int(txt), false)
	_refresh()


# ================================================================= Debug > Enemy Spawn
## Every monster, least difficult first (the original's own order: each floor's block of ten is tougher than
## the last).  "Spawn" puts the selected one on the empty space ahead of you, replacing any monster there.
func _enemy_spawn() -> void:
	if not playing or game.levels.is_empty():
		await alert("Start or open a game first.")
		return
	if _in_combat():
		await alert("You can't spawn an enemy while you are in combat.")
		return
	busy = true
	var mons: Array = []
	for i in Data.monsters().size():
		mons.append(i)
	mons.sort_custom(func(a, b): return int(Data.monsters()[a]["id"]) < int(Data.monsters()[b]["id"]))
	var ov := _overlay()
	var panel := MacUI.dialog_panel(Rect2(0, 0, 320, 420))
	ov.add_child(panel)
	var title := MacUI.label("Enemy Spawn", 13)
	title.position = Vector2(12, 8)
	title.size = Vector2(280, 20)
	panel.add_child(title)
	var list := ItemList.new()
	list.position = Vector2(12, 34)
	list.size = Vector2(280, 320)
	for mi in mons:
		list.add_item(str(Data.monsters()[mi]["name"]).capitalize())
	list.select(0)
	_style_list(list)
	panel.add_child(list)
	_pad(panel)
	panel.position = ((MacUI.SCREEN - panel.size) / 2.0).floor()
	var close_b := _corner_button(panel, "Close", -1)
	var spawn_b := _mac_button("Spawn", 1, true)
	spawn_b.size = spawn_b.custom_minimum_size
	spawn_b.position = close_b.position - Vector2(spawn_b.size.x + 10, 0)
	panel.add_child(spawn_b)
	list.item_activated.connect(func(_i): modal_done.emit(1))
	while true:
		var r = await _wait_modal(ov)
		if int(r) != 1:
			break
		var sel: PackedInt32Array = list.get_selected_items()
		if sel.is_empty():
			continue
		var here := Vector2i(int(game.p["x"]), int(game.p["y"]))
		var dv: Vector2i = GameState.DIRS[int(game.p["dir"])]
		var ahead: Vector2i = here + dv
		var fk := "%d,%d" % [ahead.x, ahead.y]
		if not game.open_between(here, ahead) or game.tile(ahead.x, ahead.y) != LevelGen.T.FLOOR or game.level()["features"].has(fk):
			await alert("There must be at least one empty space ahead of you to spawn the enemy.")
			continue
		# two spaces ahead if that is free too, so you walk up to it and meet it as usual
		var far: Vector2i = ahead + dv
		if game.open_between(ahead, far) and game.tile(far.x, far.y) == LevelGen.T.FLOOR and not game.level()["features"].has("%d,%d" % [far.x, far.y]):
			ahead = far
		var L: Dictionary = game.level()
		var old := game.monster_at(ahead.x, ahead.y)
		if not old.is_empty():
			L["monsters"].erase(old)             # any monster already there is removed
		var mon := LevelGen.make_monster(game.depth, game.rng, ahead)
		var mi: int = mons[sel[0]]
		var md: Dictionary = Data.monsters()[mi]
		var hp := 0
		for i in game.depth:
			hp += game.rng.randi_range(1, maxi(1, int(md["hit_dice"])))
		mon["idx"] = mi
		mon["hp"] = maxi(1, hp)
		mon["maxhp"] = mon["hp"]
		mon["peace"] = game.rng.randi_range(1, maxi(1, int(md["armor_class"])))
		mon["met"] = false             # an ordinary monster: you meet it when you walk up to it
		mon["awake"] = false
		if absi(ahead.x - here.x) + absi(ahead.y - here.y) == 1:
			mon["fled"] = true         # right beside you: it waits until you step away and come back
		L["monsters"].append(mon)
		_on_message("Spawned %s ahead of you." % game.with_article(str(md["name"])))
		_refresh()
	ov.queue_free()
	busy = false
	_refresh()


# ================================================================= Debug > Print Player Stats
## Writes the numbers the game calculates with to the console (Godot's output).
func _print_player_stats() -> void:
	if game.p.is_empty():
		print("[Castle Knowledge] no game in progress")
		return
	var p: Dictionary = game.p
	var t := game._orig_sword()
	var attacks: int = int(p["level"]) / 5 + 1
	var lines: Array = []
	lines.append("===== %s, level %d (%s) =====" % [p["name"], int(p["level"]), game.title()])
	lines.append("Floor %d   Gold %d   Crystals %s" % [game.depth, int(p["gold"]), str(p.get("crystals", []))])
	lines.append("XP %d   next level at %d (needs %d more)" % [int(p["xp"]), game.xp_for_next(), maxi(0, game.xp_for_next() - int(p["xp"]))])
	lines.append("Hit points %d / %d" % [int(p["hp"]), int(p["maxhp"])])
	lines.append("Strength %d   Dexterity %d   IQ %d   Luck %d" % [int(p.get("str", 12)), int(p.get("dex", 12)), int(p.get("iq", 12)), int(p.get("lk", 12))])
	lines.append("Armor: %s (type %d, bonus %+d)   Shield: type %d, bonus %+d   Armor class %d" % [
		Data.s("armors", int(p["armor"]["type"])) if int(p["armor"]["type"]) >= 0 else "none", int(p["armor"]["type"]), int(p["armor"]["bonus"]),
		int(p["shield"]["type"]), int(p["shield"]["bonus"]), game.armor_class()])
	lines.append("Sword: %s (type %d, combat value %d, bonus %+d)" % [Data.s("swords", int(p["sword"]["type"])) if int(p["sword"]["type"]) < 5 else "bare hands", int(p["sword"]["type"]), t, int(p["sword"]["bonus"])])
	lines.append("Attack: %d per round (before rings/helms), die 1..%d + monster armor, hit when roll > %d, damage 1..%d %+d" % [
		attacks, (6 if t == 0 else 2 * t + 18), 33 - int(p.get("str", 12)) + t - int(p["level"]) - int(p["floor_fx"].get("to_hit", 0)),
		maxi(1, 2 * t - t / 3 - int(p.get("hunger_stage", 0))), int(p.get("str", 12)) - 15 + int(p["sword"]["bonus"])])
	lines.append("Ring %s   Helm %s   Amulet %s" % [str(p.get("ring")), str(p.get("helm")), str(p.get("amulet"))])
	lines.append("Spells %s   Failsafe spells %s" % [str(game.spell_counts()), str(p.get("failsafe_spells", false))])
	lines.append("Hunger %d (stage %d)   Rations %d   Floor effects %s" % [int(p.get("hunger", 0)), int(p.get("hunger_stage", 0)), int(p.get("rations", 0)), str(p.get("floor_fx", {}))])
	lines.append("Pack (%d): %s" % [(p["pack"] as Array).size(), ", ".join(PackedStringArray((p["pack"] as Array).map(func(x): return game.item_name(x, true))))])
	for l in lines:
		print(l)
	_on_message("Player stats printed to the console.")
