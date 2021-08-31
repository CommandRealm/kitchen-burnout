##init function

##Gamerules
#
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
##gamerule reducedDebugInfo true
##gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

##Basic game objectives

##Has joined will by default be null and with an unless statement it can teleport them.
scoreboard objectives add has_joined dummy


scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

scoreboard objectives add state dummy
##$game will be 1 while the game is running and 0 while it isn't running.
scoreboard players add $game state 0

##pregame will countain any information required for the countdown.
scoreboard objectives add pregame dummy


##Ready score
scoreboard objectives add ready dummy

##Pregame right click detection
scoreboard objectives add pregame_click minecraft.used:minecraft.knowledge_book


##Number objective
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
scoreboard players set $-1 number -1
scoreboard players set $40 number 40
scoreboard players set $-40 number -40
scoreboard players set $75 number 75

##Settings
scoreboard objectives add settings dummy

##Main objective just for game operations.
scoreboard objectives add game dummy

##Lobby teams
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
team modify test prefix {"text":"(Tester) ","color":"white"}
team modify help prefix {"text":"[Helper] ","color":"gray "}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify art prefix {"text":"{Artist} ","color":"green"}
team modify srart prefix {"text":"{Senior Artist} ","color":"dark_green"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"} ","bold":true}]
team modify manager prefix {"text":"{Manager} ","color":"yellow"}

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


##Random objective
scoreboard objectives add random dummy


scoreboard objectives add prefix dummy

##Settings
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

team add game
team modify game color gray
team modify game collisionRule always
team modify game friendlyFire false

scoreboard objectives add random dummy

scoreboard objectives add recipe_cooldown dummy