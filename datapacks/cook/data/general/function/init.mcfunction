# Player state
scoreboard objectives add has_joined dummy
scoreboard objectives add has_left minecraft.custom:minecraft.leave_game
scoreboard objectives add has_reset_data dummy

scoreboard objectives add held_item dummy

scoreboard objectives add slot dummy
scoreboard objectives add slot_old dummy
scoreboard objectives add click_length dummy
scoreboard objectives add click_length_cooldown dummy

# Gamerules
gamerule maxCommandChainLength 20000000
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule disablePlayerMovementCheck true
# gamerule reducedDebugInfo true
# gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

# Lobby bossbar
bossbar remove minecraft:lobby
bossbar add minecraft:lobby ["",{"text":"\u1F52 ","color":"red"},{"translate":"Kitchen ","color":"gray","bold":true},{"translate":"BURNOUT","color":"gold","bold":true},{"text":" - ","obfuscated":false,"color":"gray"},{"text":"By the ","obfuscated":false,"color":"white"},{"text":"Command ","obfuscated":false,"bold":true,"color":"aqua"},{"text":"Realm ","obfuscated":false,"bold":true,"color":"dark_aqua"},{"text": "Team","obfuscated":false,"color":"white"},{"text":" \u1F52","color":"red"}]
bossbar set minecraft:lobby style progress
bossbar set minecraft:lobby color white
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1
bossbar set minecraft:lobby players @a[gamemode=adventure,x=0,y=66,z=0,distance=..500]
bossbar set minecraft:lobby visible true

# Readying Up
scoreboard objectives add ready dummy
scoreboard objectives add pregame_click minecraft.used:minecraft.knowledge_book
scoreboard objectives add drop_ready_book minecraft.dropped:minecraft.knowledge_book
scoreboard objectives add pregame dummy

# Number objective
scoreboard objectives add number dummy

# Game state
scoreboard objectives add game dummy
scoreboard objectives add state dummy
scoreboard players add $game state 0
scoreboard objectives add end trigger
scoreboard objectives add restart trigger

# Teams
team add lobby
team add unlock
team add test
team add translate
team add help
team add bld
team add prg
team add srbld
team add srprg
team add art
team add srart
team add lead
team add manager
team modify lobby color white
team modify test color white
team modify translate color white
team modify help color white
team modify bld color white
team modify prg color white
team modify srbld color white
team modify srprg color white
team modify art color white
team modify srart color white
team modify lead color white
team modify manager color white
team modify unlock color white
team modify unlock prefix {"translate":"[SPORK] ","color":"light_purple"}
team modify test prefix {"translate":"(Tester) ","color":"white"}
team modify translate prefix [{"translate":"(Translator)","color":"#fc58aa"},{"text":" "}]
team modify help prefix {"translate":"[Helper] ","color":"gray"}
team modify bld prefix {"translate":"{Builder} ","color":"blue"}
team modify prg prefix {"translate":"{Programmer} ","color":"red"}
team modify srbld prefix {"translate":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"translate":"{Sr. Programmer} ","color":"dark_red"}
team modify art prefix {"translate":"{Artist} ","color":"green"}
team modify srart prefix {"translate":"{Sr. Artist} ","color":"dark_green"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"translate":"Project Lead","bold":false},{"text":"} ","bold":true}]
team modify manager prefix {"translate":"{Manager} ","color":"yellow"}

team add cr
team modify cr color white
team modify cr prefix [{"text":"{","color":"white","bold":true},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"} ","color":"white","bold":true}]

team modify unlock collisionRule never
team modify lobby collisionRule never
team modify test collisionRule never
team modify translate collisionRule never
team modify help collisionRule never
team modify bld collisionRule never
team modify prg collisionRule never
team modify srbld collisionRule never
team modify srprg collisionRule never
team modify lead collisionRule never
team modify manager collisionRule never
team modify cr collisionRule never
team add no_collision
team modify no_collision collisionRule never
team modify no_collision color gray

scoreboard objectives add prefix dummy

# Settings
scoreboard objectives add settings dummy
scoreboard players set $recipes settings 1
scoreboard players add $mode settings 0
scoreboard players add $map settings 0
execute if score $map settings matches 0 run scoreboard players set $map settings 1

scoreboard objectives add map dummy

scoreboard objectives add click minecraft.used:carrot_on_a_stick
scoreboard objectives add click_cooldown dummy
# Reset after main functions
scoreboard objectives add is_sneaking minecraft.custom:sneak_time

# Enderchest stuff
scoreboard objectives add open_echest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add click_ec dummy
scoreboard objectives add screen dummy

scoreboard objectives add hat dummy
scoreboard objectives add knife dummy
scoreboard objectives add bell_sound dummy

# Advancement stuff
scoreboard objectives add finished_games dummy
scoreboard objectives add finished_orders dummy
scoreboard objectives add ingredients_taken dummy
scoreboard objectives add ingredients_cut dummy
scoreboard objectives add fish_caught dummy
scoreboard objectives add ingredients_trashed dummy
scoreboard objectives add ingredients_burnt dummy

# Stations
scoreboard objectives add station dummy
scoreboard objectives add station_timer dummy
scoreboard objectives add station_state dummy

scoreboard objectives add prep_display dummy
scoreboard objectives add prep_position dummy

scoreboard objectives add floating_text dummy
scoreboard objectives add fish_count dummy


scoreboard objectives add tnt_launchpad dummy
scoreboard objectives add warp_fish dummy
scoreboard objectives add arrow_cycle dummy
scoreboard objectives add archery dummy
scoreboard objectives add in_pipe_time dummy
scoreboard objectives add ice_bridge dummy
scoreboard objectives add campfire_heat dummy
scoreboard objectives add thin_ice dummy

scoreboard objectives add sliding_platform dummy
scoreboard objectives add sliding_dir dummy

scoreboard objectives add laser_slide_dir dummy
scoreboard objectives add laser_pos dummy
scoreboard objectives add laser_z dummy

scoreboard objectives add freeze_time dummy
scoreboard objectives add freeze_pos_x dummy
scoreboard objectives add freeze_pos_y dummy
scoreboard objectives add freeze_pos_z dummy
scoreboard objectives add freeze_rot_x dummy
scoreboard objectives add freeze_rot_y dummy

# Ingredient specific teams
function general:ingredient_teams
scoreboard objectives add sidebar_disp dummy ["",{"text":"🔥 ","color":"red"},{"translate":"Kitchen ","color":"gray","bold":true},{"translate":"BURNOUT","color":"gold","bold":true},{"text":" 🔥","color":"red"}]
scoreboard objectives add sidebar_disp_1 dummy ["",{"text":"🔥 ","color":"gold"},{"translate":"The Spoons","color":"blue","bold":true},{"text":" 🔥","color":"gold"}]
scoreboard objectives add sidebar_disp_2 dummy ["",{"text":"🔥 ","color":"gold"},{"translate":"The Forks","color":"red","bold":true},{"text":" 🔥","color":"gold"}]

scoreboard objectives add random dummy

scoreboard objectives add recipe_cooldown dummy
scoreboard objectives add recipe_timer dummy

# Recipe Ingredient Teams
team add recipe_missing
team modify recipe_missing color red
team modify recipe_missing collisionRule never

team add recipe_filled
team modify recipe_filled color green
team modify recipe_filled collisionRule never

# Tutorial setup
function lobby:tutorial/setup

# Forceload that chunk, I believe in you!
forceload add 0 0