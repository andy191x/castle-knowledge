
# Castle Knowledge FAQ

These are official rules from CK 2.6 that were both observed from gameplay and mined from the game disassembly with Opus 5.5.

---

## About Castle Knowledge

Castle Knowledge is a shareware game intended to help school age children learn the basics of addition, subtraction, multiplication and division, change count, simple logic, and geography. There are also jumbled word puzzles which can be solved. The game encourages a sense of exploration and curiosity in children as they wander the floors of the castle which change with every game played. The shareware version will only allow play through 4 of 20 levels.

### System requirements

Castle Knowledge version 2.6 requires a 68030 processor or later with 3.5 Mb RAM and System 7.  Some of the graphics perform much better on 68040 or PowerPC based systems but will still work on the 68030.

### Story

THE TIME OF DARKNESS AND CHAOS IS NEAR.  THE EVIL PRINCES OF IGNORANCE AND CRUELTY HAVE SPLIT APART THE ALL POWERFUL JEWEL OF KNOWLEDGE INTO FOUR INDIVIDUAL CRYSTALS.  THEY HAVE TAKEN EACH OF THE CRYSTALS (COMPASSION, WISDOM, POWER AND LEARNING) AND HIDDEN THEM SOMEWHERE IN THEIR EVER CHANGING WORLD OF FANTASY.

IN ORDER TO RESTORE THE JEWEL TO ITS FORMER GLORY AND INFLUENCE, YOU MUST FIND EACH OF THE CRYSTALS AND CARRY THEM TO THE MAGICAL TOWER OF JEWELS WHICH LIES BETWEEN THE WORLD OF FANTASY AND OUR WORLD.  ONLY BY DOING THIS CAN THE FUTURE OF THE HUMAN RACE BE ASSURED.  ONCE THERE YOU MUST REJOIN THE CRYSTALS INTO THE ALL POWERFUL JEWEL OF KNOWLEDGE BY YOUR POWERS OF DEDUCTION, WISDOM AND INTELLIGENCE.  THIS TASK WILL CERTAINLY NOT BE AN EASY ONE.  IT MAY TAKE YOU MANY ATTEMPTS TO ACHIEVE THIS GOAL, BUT NEVER LOSE HOPE.  EVEN THOUGH THE LEGIONS OF CHAOS AND IGNORANCE WILL TRY TO HINDER AND EVEN STOP YOU IN YOUR QUEST, REST ASSURED THAT THE POWER REMAINING IN THE CRYSTALS WILL GIVE YOU WHATEVER AID THEY CAN.  USE EVERY CHANCE TO BUY ITEMS WHICH MAY HELP YOU IN YOUR TIME OF TRIAL AND REMEMBER, THE HOPE OF ALL MANKIND RESTS IN YOUR HANDS.

GOOD LUCK TO YOU AND MAY YOUR JOURNEY BE SWIFT, EASY AND FRUITFUL.

---

## Rules

### General rules

* The castle has 20 floors. The stairs at the end of the 20th floor lead to the jewel minigame, which is the end of castle knowledge. You need to have the 4 crystals to play the final minigame.
* Turning left/right does not cause enemies to move.
* When one space away from an enemy, pointing the mouse cursor over them shows the sword icon. Double clicking moves forward one space and engages combat.
* Each level in the castle goes upstairs, not downstairs.
* Unlocking doors grants a small amount of experience. You can level up from solving problems.
* Problem limits automatically increase with each level gained.

### Item name randomizer

Most of the item pickups have their names randomly aliased at the start of every new game. This creates a risk/reward scenario for the player, because the item names are not revealed until they are first equipped or consumed. This only applies to items that are found on the ground or in chests. Once an item name has been revealed, the player knows the alias and all further discoveries of that item will use its actual name. An example would be finding a "wax scroll". On the current playthrough, the "wealth builder scroll" was aliased as the "wax scroll". When casting the "wax scroll", a popup is shown saying "This is a wealth builder scroll", then the cast continues as normal.

How true names are revealed:

* Drinking a potion or reading a scroll reveals that type for the rest of the game.
* The Knowledge scroll reveals everything you carry and wear.
* The Identify Wands scroll reveals all your wands.
* Anything bought in Subadd's store or received from a wish is known immediately. The store always shows true names.

Item classes are aliased as follows:

* Potions (colors): red, blue, green, black, slate, mauve, purple, yellow, brown, orange, cyan, tan, white, clear, beige, gray, violet, magenta, pink, chartreuse, turquoise, cherry, lime, ochre 
* Wands (metals): platinum, silver, bronze, copper, iron, gold, lead, brass, tin, aluminum, titanium, zinc, steel, nickel, magnesium, graphite, silicon
* Rings (jewels): ruby, diamond, sapphire, garnet, emerald, topaz, opal, agate 
* Scrolls (fabrics): silk, wax, felt, vellum, paper, cardboard, plastic, metal, cotton, rag, bark, leather, bone, vinyl, tissue, nylon, rubber, leaf, burlap, denim, crepe, satin, linen, parchment, canvas, clay
* Helms (metals): platinum, silver, bronze, copper, iron, gold, lead, brass, tin, aluminum, titanium, zinc, steel, nickel, magnesium, graphite, silicon
* Amulets (shapes): square, cube, spherical, oval, octagonal, pentagon, triangle, half-moon, circle, star, hexagonal 

### Spells

* Hurtem
* Painus
* Agonus
* Torturus
* Excrutius
* DEATH

### Inventory

* You can only carry one shield in your inventory at a time. If you have a shield equipped, you can still carry another in your inventory, but your only unequip option is to drop the shield you're using.

### Combat

* Clicking on inventory items during combat does nothing
* The run button makes the player leave combat and attempts to move them randomly in one direction. This can include running into a wall.
* When the enemies attack, their sprite zooms for several frames

### Player stats
	
All four primary stats start at 12 and are raised with points at character creation. Potions, scrolls, drains and the Vend-O-Matic keep them between 12 and 25; Muldiv’s box (+3 to each) can exceed 25.

```
Stat            What it does                                Formula
Strength        Your main attack stat: hitting and damage   To hit: each attack hits if its roll beats 33 − strength + sword value − level, so +1 strength is +1 to hit. Damage: each hit does random(1 … 2 × sword − sword ÷ 3 − hunger stage) + strength − 15 + sword bonus, so +1 strength is +1 damage per hit. Below 15, strength subtracts damage, so weak characters often do nothing. It also powers the doppleganger’s “returned your blow” against you.
Dexterity       Your main defense                           A monster hits only if its roll, random(1 … 20 + armor class), beats 5 + dexterity − floor. +1 dexterity makes every monster attack a little more likely to miss; deeper floors wear this down.
IQ              Spells                                      A spell is resisted if IQ + level < random(1 … 25 + level), so higher IQ means fewer wasted charges. Failsafe spells skip the roll. IQ has no effect in combat or on problems.
Luck            Escaping disasters                          Chest traps: the arrow and acid traps are escaped when random(25) < luck. At luck 17 that’s about two times in three; gas and the evil mist can’t be escaped. Deadly spores: you survive unless random(25) + luck < 25 − level. Luck doesn’t affect hitting or damage.
```

Related numbers:

```
Number               What it is
Sword value          0 bare-handed, 1 short sword … 5 two hand sword. It sets your attack die (2 × value + 18, or 6 bare-handed) and the hit target.
Armor class          More details below. Show in brackets, Armor base (none 10, robe 9, leather 8, ring 6, chain 4, plate 2) − armor bonus − shield type (1–5) − shield bonus. Lower is better.
Attacks per round    Level ÷ 5 + 1. ×1.5 with the ring of speed or helm of warrior, ÷2 with the helm of slowness.
Hunger stage         0 normally; rises by 1 at each hunger warning (100, 120, 140 and 155 steps since you last ate) and reduces your damage die by that much. Eating resets it; at 160 steps you starve.
```

#### Armor class

The "[-3]" next to your armor is your armor class, and lower is better. The original calculates it as:

* Base value for your armor: none 10, robe 9, leather coat 8, ring mail 6, chain mail 4, plate mail 2;
* minus your armor's bonus (enchantments are positive, curses negative);
* minus your shield: 1–5 by type (leather 1 up to gold 5), minus its bonus too.

So plate mail (2) with a +1 enchantment and a bronze shield (3) and no shield bonus gives 2 − 1 − 3 = −2. Your −3 means a little more enchantment or a better shield somewhere.

When a monster attacks, it rolls a random number from 1 to (20 + your armor class), and it hits only if the roll beats 5 + your dexterity − the floor number. A lower armor class shrinks the monster's die. At −3 the die is 1–17, so with dexterity 16 on floor 5 the monster has to roll above 16: just a 1-in-17 chance per attack. Invincibility and Vulnerability change the 20 to 10 or 40 for the rest of the floor.

### Food / Hunger

After fully exploring two floors, I was prompted to eat.

* After walking about another 20 spaces, I was prompted with "You are very hungry and are getting weak. You must eat very soon."
* After walking about another 20 spaces, I was prompted with "If you don't stop and eat, you're going to starve to death."
* After walking about another 20 spaces, I was prompted with "Too bad. You just starved to death.". This didn't actually kill me, I was able to keep playing. I presume this could have been due to the shareware popup removal.

### Enemy distribution (incomplete)

* Level 1: Hobogoblin, Tiger, Wharf Rat
* Level 2: Stirge, Swamp Bug, Lemure Devil, Scorpion
* Level 3: Banshee, Bugbear
* Level 4: Owlbear, Ghast, Shadow, Yellow Mold, Dire Wolf, Shambling Mound, Gargoyle, Ice Toad
* Level 5: Green Dragon, Phantom Stalker, Acid Monster, Minotaur
* Level 6: Carrion Crawler, Nymph, Basilisk, Troll, Bear Man, Wight, Wraith, Putrid Slime
* Level 7: Gorgon, Stone Giant, Mimic, Fire Giant
* Level 8: Doppleganger, Starver, Purple Worm, Vampire, Water Elemental
* Level 9: Spirit, Brown Mold, Berserker
* Level 10: Black Unicorn, Elder Titan, Death Angel, Lich, Beholder, Iron Golem
* Level 11: Scorpion, Bugbear, Basilisk, Snow Devil, Vampire, Mind Drain
* Level 12: Lizard, Fire Giant, Kobold, Vampire, Xorn, Wharf Rat, Gargoyle, Spirit, Purple Worm
* Level 13: Owlbear, Shambling Mound, Doppleganger, Wharf Rat, Phantom Stalker, Mind Drain
* Level 14: Fire Beetle, Gargoyle, Berserker, Mimic
* Level 15: Banshee, Werewolf, Piercer, Vampire, Rot Grub, Nymph, Xorn, Death Angel, Putrid Slime, Berserker, Mummy, Lurker, Water Elemental, Snow Devil
* Level 16: Wyvern, Minotaur, Fire Giant, Gas Spore, Fog Ghost, Swamp Bug, Nymph
* Level 17: Skeleton, Bear Man, Night Hag, Ogre, Rot Grub, Gorgon, Hobogoblin, 7 Head Hydra, Red Dragon
* Level 18: Ghoul, Water Elemental, Basilisk, Beholder, Mind Drain, Death Angel
* Level 19: Ice Toad, Fog Ghost, Rot Grub, Orc, Piercer
* Level 20: 

### Monster special attacks

How they trigger:

* Floors: only on floor 11 and deeper.
* When: when a monster with a special attack hits you, it uses the special attack instead of a normal blow if random(100) > 65 − floor. That’s about 46% of hits on floor 11 and 54% on floor 19.
* Normal blow (used by several attacks below): random(1 … floor ÷ 2 + 2) damage, halved by the helm of protection.
* Slowed (attacks 5 and 20): for the rest of the floor, ≈30% of your attack rounds are lost.

Protection:

```
Blocker                     Stops                                                               Reliability
Amulet of spellshield       Spell attacks (3, 11, 13, 17, 34, 35, 39, 41, 42)                   Always
Helm of protection          Drains, armor curses and burns, ice spell (12, 14, 16, 27, 30, 33)  Always
Helm of protection          Stoning, poison, freezing scream, confusion (20, 22, 23, 31, 37)    Half the time
Scroll of silence           Shrieks and wails (5, 10)                                           For the rest of the floor
```	
	
The attacks:

```
#    Attack                           Monsters                              Blocked by               Effect on you
1    Spits liquid fire                fire beetle                           -                        ≈1 to floor ÷ 2 + 4 extra damage
2    Stuns you                        tiger, zombie, scorpion               -                        2 extra normal blows
3    Fire spell                       mane demon                            Spellshield              ≈2–6 + floor ÷ 2 damage
4    Weakening spores                 gas spore                             -                        Strength −1 every 3rd such hit
5    Piercing shriek                  shrieker                              Silence                  Slowed for the rest of the floor
6    Punches a hole in your armor     piercer, borer beetle                 -                        Armor bonus −1 (if wearing armor)
7    Drains blood                     tirge, pit fiend                      -                        Strength −1 on two hits in three
8    Digestive juices                 ochre jelly                           -                        ≈1 to floor ÷ 2 + 4 extra damage
9    Spins a web                      huge spider                           -                        2 extra normal blows
10   Terrible wailing                 banshee, night hag                    Silence                  39% chance of ≈1–4 damage
11   Dissolves your gold              rat-man, ape, imp                     Spellshield              Gold reduced by a quarter
12   Drains experience                ghoul, spectre, mummy                 Helm (always)            ≈XP −20 × floor
13   Blizzard spell                   white dragon                          Spellshield              ≈2–6 + floor ÷ 2 damage
14   Drains a level                   ghast, wraith, vampire, spirit, lich  Helm (always)            Level −1 (never below 1): the XP threshold halves, XP drops to ¾ of it, maximum HP falls, and spell charges are lost
15   Deadly spores                    yellow mold                           -                        Death if random(25) + luck < 25 − level
16   Drains experience                shadow                                Helm (always)            ≈XP −20 × floor
17   Cold spell                       ice toad                              Spellshield              ≈2–6 + floor ÷ 2 damage
18   Choking gas                      green dragon                          -                        25% chance of 1 extra normal blow
19   Rusts your armor                 acid monster, water elemental         -                        Armor bonus −1
20   Confuses you                     basilisk                              Helm (half)              50% chance: slowed for the rest of the floor
21   Disappears                       (no monster uses it)                  -                        The monster vanishes
22   Turns you to stone               medusa                                Helm (half)              Death
23   Poisoned barb                    manticore                             Helm (half)              Strength −1, no damage
24   Nauseating smell                 putrid slime                          -                        1 extra normal blow
25   Slows your reflexes              wight                                 -                        Dexterity −1 every 3rd such hit
26   Gale-force winds                 air elemental                         -                        ≈1 to floor ÷ 2 + 4 extra damage
27   Curses your armor                bone devil                            Helm (always)            Armor bonus −1
28   Reduces your luck                xorn, will-o-wisp                     -                        Luck −1 every 3rd such hit
29   Crushes your armor               stone giant                           -                        Armor bonus −1
30   Burns your armor                 fire giant                            Helm (always)            Armor bonus −1
31   Turns you to stone               gorgon                                Helm (half)              Death
32   Drains your brains               mind drain, beholder                  -                        IQ −1 every 3rd such hit
33   Ice spell                        frost giant                           Helm (always)            1–3 per floor number + 10–15 damage
34   Frost spell                      snow devil                            Spellshield              ≈2–6 + floor ÷ 2 damage
35   Flames you and your armor        red dragon                            Spellshield              ≈2–6 + floor ÷ 2 damage and armor bonus −1
36   Returns your blow                doppleganger                          -                        You take your own sword’s damage
37   Freezing scream                  fog ghost                             Helm (half)              Monster lands 1–4 extra normal blows
38   Steals a ration                  starver                               -                        Rations −1 (if you have any)
39   Transmutes your armor            lesser titan                          Spellshield              Random armor type, bonus reset to 0
40   Sprays acid                      black dragon                          -                        Armor bonus −1
41   Inferno spell                    arch devil                            Spellshield              ≈2–6 + floor ÷ 2 damage
42   Transmutes your sword and armor  elder titan                           Spellshield              Random sword and armor types, bonuses reset to 0
```

Stat drains, in detail. Each draining attack adds to a hidden counter for its stat: +1 for most, +2 for blood drain, +3 for the poisoned barb. When the counter passes 2, the stat drops by 1 and the counter keeps the remainder after dividing by 3. A drained stat never goes below 12.	

### Points of interest

#### POI: Chest

Chests remain in the game permanently. When you engage one, you get a problem to solve. If you solve it, you can browse the chest. This opens a dialog with several items you can choose to pick up. Clicking on an item in the chest works in the same fashion as clicking on an item on the ground. The player can walk away, come back and open the chest again, but they have to solve another problem.

Opus discovered different traps in the original disassembly:

The chest has one of: a lock, a gas trap, an arrow trap, an evil feeling or an acid trap. You choose Open Chest or Leave Chest; a chest you leave stays where it is.

* Failure: the trap goes off with its original effect:
* Gas: corrodes your armor.
* Arrow: misses, or hits for 2–8.
* Evil feeling: curses your armor or sword.
* Acid: burns you.

#### POI: Wishing well

Lowest observed spawn was level 9.

When interacting, it plays the "What are you wishing for?" sound effect and opens a dialog that says "What do you wish you had" with every game item, even the harmful ones (potions, scrolls, wands, armor, swords, shields, rings, helms, amulets). Afterward it plays the "Your wish has been granted" sound effect, disappears, and leaves the item on the ground in its place.

#### POI: Muldiv's Magic Box

When the player is in the same space as the magic box they can click on 1 of the 6 color buttons. The mouse cursor changes to the grabbing hand when it moves over any of the colors. The outcome is chosen at random when clicking a button. I confirmed by saving/reloading.

Possible outcomes:

* Plays the sound effect "Your armor, health, and weapon have been improved.". Gives the player +12 HP and enhances both sword and armor (blue enhancement outline).
* No reward, plays "2049_magic_box_failure.wav"
* Plays the sound effect "Everything you carried is gone.". This destroys YOUR ENTIRE INVENTORY, EVEN CRYSTALS! Armor you're wearing is destroyed, weapon is destroyed (changes to hand icon), gold is set to zero. This spawns the tree of wisdom POI in the same room.
* Plays the sound effect "Your armor, health, and weapon have been decreased.". Gives the player -4 HP and curses both sword and armor (red enhancement outline).
* Plays a teleport sound effect, creates a circle animation and sends you back to a random position on a random floor in the castle. It could be anywhere, this has sent me to level 1 and level 19.

#### POI: Divsub's Magic Box

Very similar POI to the Muldiv's magic box, except the box is styled differently and has different outcomes.

Possible outcomes:

* No reward, plays "2049_magic_box_failure.wav"
* Plays the sound effect "Now I've got any rings, helms, or amulets that you had!" and steals those items from you.
* Plays the sound effect "You shall find nothing on this level."
* Plays the sound effect "Look at your gold!" and gives the player 3000 gold.
* Plays the sound effect "Everything you've carried is gone" and opens a dialog that says "Teleport to what level?" with 19 buttons, one for each floor. The teleport animation is shown after clicking a level. The sound effect must be erroneous, because after teleporting, I still had all of my items.

#### POI: Tree of wisdom

When the player is on the same space as the tree of wisdom, they can click on the red fruit or the blue fruit.

The red fruit is the fruit of maturity. Picking this fruit shows a dialog box with the message "(PLAYER NAME), you have just picked the fruit of maturity from the tree of wisdom. By doing so you have been granted two experience levels. Use this new power wisely.". This immediately grants the player two levels up. Each level up dialog is shown.

The blue fruit is the fruit of magic. Picking this fruit shows a dialog box with the message"(PLAYER NAME), you have just picked the fruit of magic from the tree of wisdom. By doing so you have been granted forty magic spells. Use this new power wisely.". This appears to grant 8x of each spell (Hurtem, etc.).

#### POI: Vend-o-matic (Vending Machine)

The vend-o-matic sells 6 items:

```
Item                       Price
Hercules potion            1000
Agility potion             1000
Einstein potion            750
Good luck potion           750
Add hit points potion      500
Plate of food              200
```

#### POI: Wizard

The wizard speaks ( 23502.wav ) and shows a modal dialog with the text that he speaks ( "Greetings student.  You have shown yourself to be worthy of reward.  I grant you the power of failsafe spells." ). After speaking, he disappears. I encountered him at level 14.

#### POI: Fountain

The fountain appears on level 19. When you're on the same space as the fountain, a looping water sound effect plays.

Touching the fountain opens a message box with the text "(PLAYER NAME), you have drunk from the fountain of life. By the power of this water you have been given the power of death over one entire level of monsters. Use it wisely.". The fountain disappears after the message closes. A "DEATH" spell is added to spells list after Excrutius.

### Player levels

This is what I had observed on a play-through:

```
Level       Name                             XP TO NEXT    GOLD REWARDED
1           (Unnamed)
2           JUNIOR FIGHTER                   61
3           FIGHTER 3RD CLASS                123
4           FIGHTER 2ND CLASS                302
5           FIGHTER 1ST CLASS    
6           MASTER FIGHTER                   1216
7           KNIGHT                           2479
8           CHAMPION                         5097          800
9           WIZARD KNIGHT                    19499         900
10          KNIGHT SAMURAI                   20249         1000
11          NINJA                            62386
12          NINJA KNIGHT                     124774
13          INVINCIBLE KNIGHT - LEVEL 1      34499         1300
14          INVINCIBLE KNIGHT - LEVEL 2      35249         1400
```

This is from the disassembly report:

The "XP TO NEXT" isn't fixed, there are rules.

* Levels 1–9 are minimums. The early rule doubles your actual XP, not the old threshold. The figures assume your XP lands exactly on each threshold; overshooting with a big kill pushes the next threshold higher.
* Levels 10–19 depend on the floor. The later rule adds 1,500 × the castle floor you’re on when you level up. The figures assume you’re on floor 10 for every one of those level-ups. As formulas:
    * level 10: 12,800 + 6,750 + 1,500 × floor
    * each later level L: (previous threshold) + 750 × (L − 1) + 1,500 × floor
* Increase Level potion: It doubles the current threshold and sets your XP to the old threshold + 2.

```
Level       Name                             XP TO NEXT    GOLD REWARDED
1           (Unnamed)                        50            0
2           JUNIOR FIGHTER                   100           200
3           FIGHTER 3RD CLASS                200           300
4           FIGHTER 2ND CLASS                400           400
5           FIGHTER 1ST CLASS                800           500
6           MASTER FIGHTER                   1600          600
7           KNIGHT                           3200          700
8           CHAMPION                         6400          800
9           WIZARD KNIGHT                    12800         900
10          KNIGHT SAMURAI                   *            1000
11          NINJA                            *            1100
12          NINJA KNIGHT                     *            1200
13          INVINCIBLE KNIGHT - LEVEL 1      *            1300
14          INVINCIBLE KNIGHT - LEVEL 2      *            1400
15          INVINCIBLE KNIGHT - LEVEL 3      *            1500
16          INVINCIBLE KNIGHT - LEVEL 4      *            1600
17          INVINCIBLE KNIGHT - LEVEL 5      *            1700
18          INVINCIBLE KNIGHT - LEVEL 6      *            1800
19          INVINCIBLE KNIGHT - LEVEL 7      *            1900
20          KNIGHT ULTIMATE                  *            2000
```

---
