# Technical notes

## Where the data lives
All data is in **resource forks**. The zip stored them as AppleDouble files (`__MACOSX/._name`,
entry ID 2 = resource fork, ID 9 = Finder info). The data forks are empty except `CK story`
(plain text) and the README. Creator code `JDHC`.

| File | Resource types |
|---|---|
| Castle Knowledge 2.6 | CODE 0–7, DATA, ZERO, DREL, CREL 2–7, STRS, WIND, MENU, DLOG/DITL/ALRT, CURS, PICT, icons, 2× sfnt (Courier) |
| castle sounds | 55 × `snd ` |
| CK art&stuff | 136 PICT, 205 cicn, 160 STR#, 93 DLOG, 97 DITL, 35 ppat, 13 PAT, FONT/NFNT/FOND, 6 `snd ` |
| CK helpinfo | 12 PICT help pages |

## "Compression" = standard Apple formats
- **Sounds**: `snd ` format 1, one `bufferCmd`, compressed sound header (encode 0xFE).
  compressionID 3 = **MACE 3:1** (21 sounds), 4 = **MACE 6:1** (39), one uncompressed 8-bit.
  All 22254.5454 Hz mono. `snd.py` wraps the packets in AIFF-C (`MAC3`/`MAC6`) and decodes with ffmpeg.
- **Pictures**: QuickDraw PICT v2 (one v1). Mostly vector drawing ops plus PackBitsRect/PackBitsRgn,
  DirectBitsRgn and 26 QuickTime Photo-JPEG (opcode 0x8200) images. `pict.py` is a QuickDraw
  playback engine; after a QuickTime image it skips the non-QuickTime fallback text up to the NOP.
- **cicn**: color icons, 1–8 bit with mask; monster portraits are cicn 1126 + monster STR# ID.
- **Fonts**: FONT 396 = Geneva 12, FONT 3471 = "Monsters" 15 (the map tile set), NFNT 28647 = Courier 18.

## Code layout (Symantec THINK C)
- CODE 0: jump table, 244 entries at A5+32; above-A5 1984, below-A5 50490 bytes.
- CODE n header: first jump-table index | 0x8000, entry count | 0x8000.
- Globals are absolute `$FFFFxxxx` operands relocated by CREL against A5 (`g_XXXX` = A5−XXXX).
- **CREL** entries: even = A5-relative long; **odd = STRS-relative long** (string literals),
  long located at `(entry & ~1) − 4` within the code.
- No `_Random` trap use: randomness comes from the C library `rand()`.

## Listing conventions (`disassembly/CODE_n.asm`)
`fS_OOOO` = function at offset OOOO in segment S. Toolbox traps are named. Jump-table calls are
resolved to function names. String literals are annotated with their text.

## Useful starting points
| Function | What it does |
|---|---|
| f2_0886 | draws a character with fallback fonts (Courier 18 → Geneva → Helvetica 14) |
| f2_0c6e | erases a map cell; contains the 21-px grid math |
| f2_43a8 | plots a Monsters-font glyph at (h,v) — the map tile renderer |
| f2_4410 | draws the player (glyph 124 + direction) |
| f2_12e8 | getmonsters — loads monster STR# records |
| f2_6264 | About/registration dialog |
| CODE 5/6 | save/load (all the "reading/writing X from file" strings) |
