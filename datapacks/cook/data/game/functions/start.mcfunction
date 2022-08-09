#> game:start Function for the when the game first starts.
scoreboard players set $game state 1

scoreboard players set $time game 0
scoreboard players set $const game_ticks 0

scoreboard players reset $finished_recipes game
scoreboard players reset $score game

# Classic mode
execute if score $mode settings matches 0 run scoreboard players set $finished_recipes game 0
execute if score $mode settings matches 0 run scoreboard players set $score game 0
# Versus mode
execute if score $mode settings matches 1..2 run scoreboard players set $finished_recipes_1 game 0
execute if score $mode settings matches 1..2 run scoreboard players set $finished_recipes_2 game 0
execute if score $mode settings matches 1..2 run scoreboard players set $score game 0
execute if score $mode settings matches 1..2 run scoreboard players set $score_2 game 0
# Competitive mode
scoreboard players set $competitive customers 0
scoreboard players set $winner shuffle 0
scoreboard players set $end_timer shuffle 0

# Giving people the playing tag
tag @a[scores={ready=1..}] add playing
tag @a[scores={ready=1..}] remove tutorial
clear @a[tag=playing,tag=!tutorial]
effect clear @a[tag=playing,tag=!tutorial]
gamemode adventure @a[tag=playing]
tag @a[tag=playing] remove team_2


# Give players temporary effects
effect give @a[tag=playing,tag=!tutorial] instant_health 1 9 true
effect give @a[tag=playing,tag=!tutorial] blindness 1 255 true
effect give @a[tag=playing,tag=!tutorial] slowness 1 255 true
effect give @a[tag=playing,tag=!tutorial] jump_boost 1 128 true

# Joining game teams
execute if score $mode settings matches 0 run team join game_0 @a[tag=playing,tag=!tutorial]
execute if score $mode settings matches 1..2 run tag @a[tag=playing,tag=!tutorial,tag=lobby_team_2] add team_2
execute if score $mode settings matches 1..2 run team join 1_0 @a[tag=playing,tag=!tutorial,tag=!team_2]
execute if score $mode settings matches 1..2 run team join 2_0 @a[tag=playing,tag=!tutorial,tag=team_2]

# Show held ingredient scoreboard
execute if score $mode settings matches 0 run scoreboard objectives setdisplay sidebar sidebar_disp
execute if score $mode settings matches 0 run scoreboard players reset * sidebar_disp
execute if score $mode settings matches 0 run scoreboard players set @a[tag=playing,tag=!tutorial] sidebar_disp 0
execute if score $mode settings matches 1..2 run scoreboard objectives setdisplay sidebar.team.blue sidebar_disp_1
execute if score $mode settings matches 1..2 run scoreboard players reset * sidebar_disp_1
execute if score $mode settings matches 1..2 run scoreboard players set @a[tag=playing,tag=!tutorial,tag=!team_2] sidebar_disp_1 0
execute if score $mode settings matches 1..2 run scoreboard objectives setdisplay sidebar.team.red sidebar_disp_2
execute if score $mode settings matches 1..2 run scoreboard players reset * sidebar_disp_2
execute if score $mode settings matches 1..2 run scoreboard players set @a[tag=playing,tag=!tutorial,tag=team_2] sidebar_disp_2 0

# Resetting end cooldown things
scoreboard players reset $end game

# Title times
title @a[tag=playing,tag=!tutorial] times 0 25 5
title @a[tag=playing,tag=!tutorial] subtitle ""
title @a[tag=playing,tag=!tutorial] title ""

forceload remove all
forceload add 0 0

# Click stuff
scoreboard players reset @a click
scoreboard players reset @a click_cooldown

# Reset ingredient
scoreboard players set @a[tag=playing,tag=!tutorial] ingredient 0

# Advancements
advancement grant @a[tag=playing,tag=!tutorial] only game:inventory_changed
#it isn't removed so that inventories will be updated immediately.

# Generating IDs
# scoreboard objectives remove id
# scoreboard objectives add id dummy
# scoreboard players set $id id 0
# execute as @a[tag=playing,sort=random] at @s run function game:generate_id

# Pick kitchens
execute unless score $mode settings matches 2 run scoreboard players operation @a[tag=playing,tag=!tutorial] map = $map settings
execute if score $mode settings matches 2 run function game:mode_shuffle/pick_kitchens

# Setting up the map.
#kill @e[type=area_effect_cloud,tag=station_placer]
function game:map/setups
execute if score $mode settings matches 1..2 run function game:map/setups_2
#schedule function game:map/setup_stations 20t

# Recipe generation
execute if score $mode settings matches 0 run function game:mode_classic/generate_recipes
execute if score $mode settings matches 1 run function game:mode_versus/generate_recipes
execute if score $mode settings matches 2 run function game:mode_shuffle/generate_recipes
execute if score $mode settings matches 3 run function game:mode_competitive/generate_recipes
scoreboard players reset @a recipe_cooldown
scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,tag=!team_2,limit=1] recipe_cooldown 65
scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,tag=team_2,limit=1] recipe_cooldown 65

# Start timer
execute if score $mode settings matches 0..1 run function game:timers/normal_setup
execute if score $mode settings matches 2 run function game:timers/shuffle_setup
execute if score $mode settings matches 3 run function game:timers/competitive_setup

# Advancements
execute if score $mode settings matches 0 run advancement grant @a[gamemode=adventure,tag=playing] only advancements:general_classic
execute if score $mode settings matches 1 run advancement grant @a[gamemode=adventure,tag=playing] only advancements:general_versus
execute if score $mode settings matches 2 run advancement grant @a[gamemode=adventure,tag=playing] only advancements:general_shuffle
execute if score $mode settings matches 3 run advancement grant @a[gamemode=adventure,tag=playing] only advancements:general_competitive

# End early stuff
scoreboard players reset * end
scoreboard players reset * restart
scoreboard players enable @a[gamemode=adventure,tag=playing,tag=!tutorial] end
execute if score $mode settings matches 3 run scoreboard players enable @a[gamemode=adventure,tag=playing,tag=!tutorial] restart
scoreboard players reset $no_contest state
scoreboard players reset $players end
scoreboard players set $old_players end 0
execute unless score $mode settings matches 3 run tellraw @a[gamemode=adventure,tag=playing,tag=!tutorial] ["",{"text":"\n\n- ","color":"gray"},{"translate":"If you'd like to end the game early, click this message or run","color":"green","clickEvent":{"action":"run_command","value":"/trigger end"}},{"text":"\n- ","color":"gray"},{"text":"/trigger end","clickEvent":{"action":"run_command","value":"/trigger end"},"color":"dark_green","underlined":true},{"text":"\n\n"}]
execute if score $mode settings matches 3 run tellraw @a[gamemode=adventure,tag=playing,tag=!tutorial] ["",{"text":"\n- ","color":"gray"},{"translate":"To immediately restart the game, click this message or run","color":"green","clickEvent":{"action":"run_command","value":"/trigger restart"}},{"text":"\n- ","color":"gray"},{"text":"/trigger restart","clickEvent":{"action":"run_command","value":"/trigger restart"},"color":"dark_green","underlined":true},{"text":"\n\n- ","color":"gray"},{"translate":"If you'd like to end the game early, click this message or run","color":"gray","clickEvent":{"action":"run_command","value":"/trigger end"}},{"text":"\n- ","color":"gray"},{"text":"/trigger end","clickEvent":{"action":"run_command","value":"/trigger end"},"color":"dark_gray","underlined":true},{"text":"\n"}]

# Setting the button
setblock -9 17 -10 air
scoreboard players set $button pregame 5