class_name Puzzles
extends RefCounted
## "Knowledge" problems. Content comes from the original STR# resources:
##   math limits ............ STR# 4000 ("maximum sum", "maximum multiplier")
##   synonym pairs .......... STR# 20001 / 20002 (100 aligned pairs)
##   states / capitals ...... STR# 2006 / 2007
##   4/5/6-letter words ..... STR# 3000 / 3001 / 3002 (getwords)
##   deduction .............. STR# 10002 "deduction problems" (crystal placement)
## Each problem: {"kind", "question", "choices": Array (empty = typed answer), "answer": String}

const MATH_INTRO := "You must solve a problem to %s."
const CHOICE_INTRO := "You must answer this question to %s."
const WORD_INTRO := "You must unscramble the letters below to make a word to %s."

static func _vertical(a: int, b: int, op: String) -> String:
	var w := maxi(str(a).length(), str(b).length())
	return "    %s\n%s %s\n   ————" % [str(a).lpad(w), op, str(b).lpad(w)]

static func make(options: Dictionary, rng: RandomNumberGenerator, difficulty: int) -> Dictionary:
	var kinds: Array = []
	if options.get("math_add", true) or options.get("math_sub", true): kinds.append("add")
	if options.get("math_mul", true) or options.get("math_div", true): kinds.append("mul")
	if options.get("synonyms", true): kinds.append("syn")
	if options.get("capitals", true): kinds.append("cap")
	if options.get("words", true): kinds.append("word")
	if options.get("counting", true): kinds.append("count")
	if options.get("coins", true): kinds.append("coins")
	if options.get("deduction", true): kinds.append("deduction")
	if kinds.is_empty():
		kinds.append("add")
	match str(kinds[rng.randi_range(0, kinds.size() - 1)]):
		"add": return addition(options, rng, difficulty)
		"mul": return multiplication(options, rng, difficulty)
		"syn": return synonym(rng)
		"cap": return capital(rng)
		"count": return counting(rng, difficulty, int(options.get("max_count", 20)))
		"coins": return counting_coins(rng)            # Counting coins (DITL 1001)
		"teaser": return coin_grid(rng)                # Brain Teaser (DITL 190, the coin grid)
		"deduction": return teaser(rng, difficulty)     # add / subtract the numbers to reach the goal (original help)
		_: return scramble(rng, difficulty, options)

static func addition(options: Dictionary, rng: RandomNumberGenerator, difficulty: int) -> Dictionary:
	var mx: int = maxi(2, int(options.get("max_sum", 20)) + difficulty * 5)
	var a := rng.randi_range(1, mx - 1)
	var b := rng.randi_range(0, mx - a)
	var can_sub: bool = options.get("math_sub", true)
	var can_add: bool = options.get("math_add", true)
	if can_sub and a >= b and (not can_add or rng.randf() < 0.4):
		return {"kind": "math", "intro": MATH_INTRO, "question": _vertical(a, b, "-"), "choices": [], "answer": str(a - b)}
	return {"kind": "math", "intro": MATH_INTRO, "question": _vertical(a, b, "+"), "choices": [], "answer": str(a + b)}

static func multiplication(options: Dictionary, rng: RandomNumberGenerator, difficulty: int) -> Dictionary:
	var mx: int = maxi(1, int(options.get("max_mult", 10)) + difficulty)
	var a := rng.randi_range(1, mx)
	var b := rng.randi_range(1, mx)
	var can_div: bool = options.get("math_div", true)
	var can_mul: bool = options.get("math_mul", true)
	if can_div and (not can_mul or rng.randf() < 0.3):
		return {"kind": "math", "intro": MATH_INTRO, "question": "%d ÷ %d =" % [a * b, b], "choices": [], "answer": str(a)}
	return {"kind": "math", "intro": MATH_INTRO, "question": _vertical(a, b, "×"), "choices": [], "answer": str(a * b)}

static func synonym(rng: RandomNumberGenerator) -> Dictionary:
	var A: Array = Data.list("synonyms_a")
	var B: Array = Data.list("synonyms_b")
	var n := mini(A.size(), B.size())
	var i := rng.randi_range(0, n - 1)
	var choices := _distractors(B, i, rng)
	return {"kind": "syn", "intro": CHOICE_INTRO, "question": "The word that means the same as '%s' is:" % A[i], "choices": choices, "answer": str(B[i])}

static func capital(rng: RandomNumberGenerator) -> Dictionary:
	var S: Array = Data.list("states")
	var C: Array = Data.list("capitals")
	var i := rng.randi_range(0, mini(S.size(), C.size()) - 1)
	return {"kind": "cap", "intro": CHOICE_INTRO, "question": "%s is the state capital of:" % C[i], "choices": _distractors(S, i, rng), "answer": str(S[i])}

static func scramble(rng: RandomNumberGenerator, difficulty: int, opts_words: Dictionary = {}) -> Dictionary:
	var keys: Array = []
	for k in ["words4", "words5", "words6"]:
		if bool(opts_words.get(k, true)):
			keys.append(k)
	if keys.is_empty():
		keys = ["words4", "words5", "words6"]
	var key: String = keys[clampi(difficulty, 0, keys.size() - 1)]
	var W: Array = Data.list(key)
	var w: String = str(W[rng.randi_range(0, W.size() - 1)])
	var letters := w.split("")
	var mixed := w
	for t in 20:
		for i in range(letters.size() - 1, 0, -1):
			var j := rng.randi_range(0, i)
			var tmp: String = letters[i]
			letters[i] = letters[j]
			letters[j] = tmp
		mixed = "".join(letters)
		if mixed != w:
			break
	return {"kind": "word", "intro": WORD_INTRO, "question": mixed.to_lower(), "choices": [], "answer": w}

static func _distractors(pool: Array, correct: int, rng: RandomNumberGenerator) -> Array:
	var picks: Array = [str(pool[correct])]
	while picks.size() < 4 and picks.size() < pool.size():
		var c := str(pool[rng.randi_range(0, pool.size() - 1)])
		if not picks.has(c):
			picks.append(c)
	picks.shuffle()
	return picks

static func check(problem: Dictionary, answer: String) -> bool:
	return answer.strip_edges().to_lower() == str(problem["answer"]).strip_edges().to_lower()

## Deduction (Mastermind-style) code using the jewel colours of STR# 201.
static func deduction_code(rng: RandomNumberGenerator, length: int, palette: int) -> Array:
	var code: Array = []
	for i in length:
		code.append(rng.randi_range(0, palette - 1))
	return code

## Returns [exact, colour-only] matches.
static func score_guess(code: Array, guess: Array) -> Array:
	var exact := 0
	var cc := {}
	var gc := {}
	for i in code.size():
		if code[i] == guess[i]:
			exact += 1
		else:
			cc[code[i]] = int(cc.get(code[i], 0)) + 1
			gc[guess[i]] = int(gc.get(guess[i], 0)) + 1
	var near := 0
	for k in gc.keys():
		near += mini(int(gc[k]), int(cc.get(k, 0)))
	return [exact, near]


## Counting (seen in the playthrough: a row of identical pictures, "How many ...?")
static func counting(rng: RandomNumberGenerator, difficulty: int, max_count: int = 20) -> Dictionary:
	var mons: Array = Data.monsters()
	var mi := rng.randi_range(0, mons.size() - 1)
	var n := rng.randi_range(2, maxi(2, mini(max_count, 8 + difficulty * 4)))
	var name: String = mons[mi]["name"]
	return {"kind": "count", "intro": MATH_INTRO, "question": "How many %ss are there?" % name,
		"monster_id": int(mons[mi]["id"]), "count": n, "choices": [], "answer": str(n)}

## Counting coins (DITL 1001): "Using the coins below, you must choose a total of ^0 cents to ^1."
static func counting_coins(rng: RandomNumberGenerator) -> Dictionary:
	var target := rng.randi_range(6, 99)
	return {"kind": "money", "intro": "Using the coins below, you must choose a total of %d cents to %%s." % target,
		"question": "", "choices": [], "answer": str(target), "target": target}

## Coin grid (playthrough): "Drag a coin to each square so that the coins in each row and
## column equal the total next to each row or below each column ..."  2 x 2 grid.
const COINS := [1, 5, 10, 25, 50]
static func coin_grid(rng: RandomNumberGenerator) -> Dictionary:
	var grid: Array = []
	for i in 4:
		grid.append(COINS[rng.randi_range(0, COINS.size() - 1)])
	var rows := [int(grid[0]) + int(grid[1]), int(grid[2]) + int(grid[3])]
	var cols := [int(grid[0]) + int(grid[2]), int(grid[1]) + int(grid[3])]
	return {"kind": "coins", "intro": "Drag a coin to each square so that the coins in each row and column equal the total next to each row or below each column so that you can %s.",
		"question": "", "grid": grid, "rows": rows, "cols": cols, "choices": [], "answer": ""}

static func cents(v: int) -> String:
	return "%d.%02d" % [v / 100, v % 100]

## Brain teaser (help page: "add and/or subtract numbers shown at the bottom of the window
## to reach the goal number displayed").
static func teaser(rng: RandomNumberGenerator, difficulty: int) -> Dictionary:
	var nums: Array = []
	for i in 5:
		nums.append(rng.randi_range(1, 9 + difficulty * 6))
	# goal: a random signed combination of 2-4 of the numbers (always solvable)
	var goal := 0
	var used := 0
	var order: Array = [0, 1, 2, 3, 4]
	order.shuffle()
	var k := rng.randi_range(2, 4)
	for i in k:
		var v: int = nums[order[i]]
		if used == 0 or rng.randf() < 0.65:
			goal += v
		else:
			goal -= v
		used += 1
	if goal <= 0:
		goal = int(nums[order[0]]) + int(nums[order[1]])
	return {"kind": "teaser", "intro": MATH_INTRO, "question": "Reach the goal number by adding and subtracting the numbers below.",
		"goal": goal, "nums": nums, "choices": [], "answer": str(goal)}
