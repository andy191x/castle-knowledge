extends Node
## Plays the converted 'snd ' resources by their original resource ID.

const NAMED := {
	"failed_spell": 2010, "spell": 2020, "wand": 2040, "magic_box_failure": 2049,
	"uplevel": 23506, "teleport": 23507, "scroll": 23508, "crystal_solved": 23509,
	"potion": 23511, "open_door": 23512, "opening": 23566, "opening2": 23567,
	"jewel_forming": 23568, "fountain": 23580,
	# Unnamed in the original; assignments below are best guesses (see README)
	"hit": 2001, "miss": 23505, "monster_die": 23513, "player_hurt": 23521,
	"pickup": 23526, "gold": 23527, "chest": 23528, "trap": 23532, "eat": 23537,
	"step_stairs": 23542, "levelup_fanfare": 23510, "death": 23502, "well": 2041,
}
var _players: Array[AudioStreamPlayer] = []
var _cache: Dictionary = {}
var music: AudioStreamPlayer
var enabled := true
var music_enabled := true

func _ready() -> void:
	for i in 6:
		var p := AudioStreamPlayer.new()
		add_child(p)
		_players.append(p)
	music = AudioStreamPlayer.new()
	add_child(music)

func _stream(id: int) -> AudioStream:
	if _cache.has(id):
		return _cache[id]
	var st: AudioStream = null
	var dir := DirAccess.open("res://assets/sounds/")
	if dir:
		for fn in dir.get_files():
			var base := fn.replace(".import", "")
			var nm := base.trim_prefix("art_")
			if base.ends_with(".wav") and (nm.begins_with("%d." % id) or nm.begins_with("%d_" % id)):
				st = load("res://assets/sounds/" + base)
				break
	_cache[id] = st
	return st

func play_id(id: int) -> void:
	if not enabled:
		return
	var st := _stream(id)
	if st == null:
		return
	# the same sound again (e.g. quick correct answers): stop it and play it from the start
	for p in _players:
		if p.playing and p.stream == st:
			p.stop()
			p.play()
			return
	for p in _players:
		if not p.playing:
			p.stream = st
			p.play()
			return
	_players[0].stream = st
	_players[0].play()

func play(name: String) -> void:
	if NAMED.has(name):
		play_id(NAMED[name])

func play_long(id: int) -> void:
	if not enabled or not music_enabled:
		return
	music.stream = _stream(id)
	if music.stream:
		music.play()

## Intro-style music (f4_0000 / f3_4238 / f3_44be): f3_44be waits until the current sound has
## finished before the next one starts, and the intro replays a phase's sound whenever it ends.
var _loop_id := -1      # sound replayed whenever it finishes
var _queued := -1       # sound to start once the current one finishes

func loop(id: int) -> void:
	if not enabled or not music_enabled:
		return
	if not music.finished.is_connected(_on_music_finished):
		music.finished.connect(_on_music_finished)
	if music.playing:
		_queued = id            # let the current clip finish first
	else:
		_start(id)

func _start(id: int) -> void:
	_loop_id = id
	_queued = -1
	music.stream = _stream(id)
	if music.stream:
		music.play()

func _on_music_finished() -> void:
	if _queued >= 0:
		_start(_queued)
	elif _loop_id >= 0:
		_start(_loop_id)

func stop_long() -> void:
	_loop_id = -1
	_queued = -1
	music.stop()

## Length of a sound in seconds (0 if unknown).
func length(id: int) -> float:
	var st := _stream(id)
	return st.get_length() if st else 0.0

## Plays a named effect and returns its length.
func play_len(name: String) -> float:
	play(name)
	return length(int(NAMED.get(name, 0)))

# ---------------------------------------------------------------- looping music (title screen)
var _music: AudioStreamPlayer = null

func play_music(id: int, looping: bool = true) -> void:
	var st := _stream(id)
	if st == null:
		return
	if _music == null:
		_music = AudioStreamPlayer.new()
		add_child(_music)
	var loop_st: AudioStream = st.duplicate()
	if looping and loop_st is AudioStreamWAV:
		var w := loop_st as AudioStreamWAV
		w.loop_mode = AudioStreamWAV.LOOP_FORWARD
		w.loop_begin = 0
		var bytes_per_frame: int = (2 if w.format == AudioStreamWAV.FORMAT_16_BITS else 1) * (2 if w.stereo else 1)
		w.loop_end = w.data.size() / bytes_per_frame
	_music.stream = loop_st
	_music.volume_db = _players[0].volume_db if _players.size() > 0 else 0.0
	if enabled:
		_music.play()

func stop_music() -> void:
	if _music:
		_music.stop()

## Stop every sound that is playing (effects, long sounds and music).
func stop_all() -> void:
	for p in _players:
		p.stop()
	stop_long()
	stop_music()

## A wrong answer: beep.wav (assets/sounds) when present, otherwise the failure sound.
var _beep: AudioStream = null

func beep() -> void:
	if not enabled:
		return
	if _beep == null and ResourceLoader.exists("res://assets/sounds/beep.wav"):
		_beep = load("res://assets/sounds/beep.wav")
	if _beep == null:
		play_id(2049)
		return
	for p in _players:
		if not p.playing:
			p.stream = _beep
			p.play()
			return
	_players[0].stream = _beep
	_players[0].play()

## Walking into a wall: either of the original's two bump sounds.
func bump() -> void:
	play_id(23505 if randi() % 2 == 0 else 23538)
