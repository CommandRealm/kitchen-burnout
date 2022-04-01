# init function

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
# gamerule reducedDebugInfo true
# gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

# Basic game objectives

# Has joined will by default be null and with an unless statement it can teleport them.
scoreboard objectives add has_joined dummy


scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

scoreboard objectives add state dummy
# $game will be 1 while the game is running and 0 while it isn't running.
scoreboard players add $game state 0

# pregame will countain any information required for the countdown.
scoreboard objectives add pregame dummy


# Ready score
scoreboard objectives add ready dummy

# Pregame right click detection
scoreboard objectives add pregame_click minecraft.used:minecraft.knowledge_book


# Number objective
scoreboard objectives add number dummy

scoreboard players set $60 number 60
scoreboard players set $6 number 6
scoreboard players set $20 number 20
scoreboard players set $-20 number -20
scoreboard players set $15 number 15
scoreboard players set $10 number 10
scoreboard players set $5 number 5
scoreboard players set $4 number 4
scoreboard players set $3 number 3
scoreboard players set $8 number 8
scoreboard players set $2 number 2
scoreboard players set $7 number 7
scoreboard players set $100 number 100
scoreboard players set $200 number 200
scoreboard players set $500 number 500
scoreboard players set $-1 number -1
scoreboard players set $40 number 40
scoreboard players set $-40 number -40
scoreboard players set $75 number 75
scoreboard players set $1200 number 1200
scoreboard players set $353 number 353
scoreboard players set $1807 number 1807
scoreboard players set $13879 number 13879

# Settings
scoreboard objectives add settings dummy

# Main objective just for game operations.
scoreboard objectives add game dummy

# Timer
scoreboard objectives add game_ticks dummy
scoreboard objectives add game_seconds dummy
scoreboard objectives add game_minutes dummy
bossbar add game:timer ["",{"text":"Time Left - 00:00"}]
bossbar set game:timer visible false
scoreboard players set $mode_0_time settings 3600


# Lobby teams
team add lobby
team add test
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
team modify help color white
team modify bld color white
team modify prg color white
team modify srbld color white
team modify srprg color white
team modify art color white
team modify srart color white
team modify lead color white
team modify manager color white
team modify pc_role color white
team modify unlock color white
team modify test prefix {"translate":"(Tester) ","color":"white"}
team modify help prefix {"translate":"[Helper] ","color":"gray "}
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

team modify lobby collisionRule never
team modify test collisionRule never
team modify help collisionRule never
team modify bld collisionRule never
team modify prg collisionRule never
team modify srbld collisionRule never
team modify srprg collisionRule never
team modify lead collisionRule never
team modify manager collisionRule never
team modify pc_role collisionRule never
team modify cr collisionRule never

team add collision
team modify collision collisionRule never


# Random objective
scoreboard objectives add random dummy
scoreboard players set $seed random 424242

scoreboard objectives add prefix dummy

# Settings
scoreboard players add $mode settings 0
scoreboard players add $map settings 0
execute if score $map settings matches 0 run scoreboard players set $map settings 1

scoreboard objectives add map dummy

scoreboard objectives add click minecraft.used:carrot_on_a_stick
scoreboard objectives add click_cooldown dummy

scoreboard objectives add calculate dummy
scoreboard objectives add ingredient dummy
scoreboard objectives add cosmetics_hat dummy

scoreboard objectives add station dummy
scoreboard objectives add station_timer dummy
scoreboard objectives add station_state dummy
scoreboard objectives add station_placer_x dummy
scoreboard objectives add station_placer_y dummy
scoreboard objectives add station_placer_z dummy
scoreboard objectives add max_placer_x dummy
scoreboard objectives add max_placer_y dummy
scoreboard objectives add max_placer_z dummy
scoreboard objectives add station_placer_d dummy

scoreboard objectives add prep_display dummy
scoreboard objectives add floating_text dummy

scoreboard objectives add fish_count dummy

scoreboard objectives add arrow_cycle dummy

scoreboard objectives add laser_slide_dir dummy
scoreboard objectives add laser_pos dummy
scoreboard objectives add laser_z dummy

scoreboard objectives add freeze_time dummy
scoreboard objectives add freeze_pos_x dummy
scoreboard objectives add freeze_pos_y dummy
scoreboard objectives add freeze_pos_z dummy
scoreboard objectives add freeze_rot_x dummy
scoreboard objectives add freeze_rot_y dummy

scoreboard objectives add ice_bridge dummy

scoreboard objectives add campfire_heat dummy

scoreboard objectives add thin_ice dummy

# Ingredient specific teams
function general:ingredient_teams
scoreboard objectives add sidebar_disp dummy ["",{"text":"[","color":"white","bold":true},{"translate":"DO","color":"blue","bold":true},{"translate":" or ","color":"dark_purple","bold":false},{"translate":"DINE","color":"red","bold":true},{"text":"]","color":"white","bold":true}]
scoreboard objectives add sidebar_disp_1 dummy ["",{"text":"[","color":"white","bold":true},{"translate":"DO","color":"blue","bold":true},{"translate":" or ","color":"dark_purple","bold":false},{"translate":"DINE","color":"red","bold":false},{"text":"]","color":"white","bold":true}]
scoreboard objectives add sidebar_disp_2 dummy ["",{"text":"[","color":"white","bold":true},{"translate":"DO","color":"blue","bold":false},{"translate":" or ","color":"dark_purple","bold":false},{"translate":"DINE","color":"red","bold":true},{"text":"]","color":"white","bold":true}]

scoreboard objectives add random dummy

scoreboard objectives add recipe_cooldown dummy
scoreboard objectives add recipe_timer dummy

# Recipe Ingredient Teams
team add recipe_missing
team modify recipe_missing color red

team add recipe_filled
team modify recipe_filled color green

forceload add 0 0