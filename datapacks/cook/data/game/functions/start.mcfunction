# Function for the when the game first starts.
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
execute if score $mode settings matches 1..2 run scoreboard players set $score_1 game 0
execute if score $mode settings matches 1..2 run scoreboard players set $score_2 game 0

# Giving people the playing tag
tag @a[scores={ready=1..}] add playing
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
tag @a[tag=playing] remove team_2


# Give players temporary effects
effect give @a[tag=playing] instant_health 1 9 true
effect give @a[tag=playing] blindness 1 255 true
effect give @a[tag=playing] slowness 1 255 true
effect give @a[tag=playing] jump_boost 1 128 true

# Joining game teams
execute if score $mode settings matches 0 run team join game_0 @a[tag=playing]
execute if score $mode settings matches 1..2 run tag @a[tag=playing,tag=lobby_team_2] add team_2
execute if score $mode settings matches 1..2 run team join 1_0 @a[tag=playing,tag=!team_2]
execute if score $mode settings matches 1..2 run team join 2_0 @a[tag=playing,tag=team_2]

# Show held ingredient scoreboard
execute if score $mode settings matches 0 run scoreboard objectives setdisplay sidebar sidebar_disp
execute if score $mode settings matches 0 run scoreboard players reset * sidebar_disp
execute if score $mode settings matches 0 run scoreboard players set @a[tag=playing] sidebar_disp 0
execute if score $mode settings matches 1..2 run scoreboard objectives setdisplay sidebar.team.blue sidebar_disp_1
execute if score $mode settings matches 1..2 run scoreboard players reset * sidebar_disp_1
execute if score $mode settings matches 1..2 run scoreboard players set @a[tag=playing,tag=!team_2] sidebar_disp_1 0
execute if score $mode settings matches 1..2 run scoreboard objectives setdisplay sidebar.team.red sidebar_disp_2
execute if score $mode settings matches 1..2 run scoreboard players reset * sidebar_disp_2
execute if score $mode settings matches 1..2 run scoreboard players set @a[tag=playing,tag=team_2] sidebar_disp_2 0

tag @a[tag=playing] remove tutorial

# Resetting end cooldown things
scoreboard players reset $end game

# Title times
title @a[tag=playing] times 0 25 5
title @a[tag=playing] subtitle ""

forceload remove all
forceload add 0 0

scoreboard players reset @a click
scoreboard players reset @a click_cooldown
scoreboard players set @a[tag=playing] ingredient 0

# Advancements
advancement grant @a[tag=playing] only game:inventory_changed
#it isn't removed so that inventories will be updated immediately.

# Generating IDs
# scoreboard objectives remove id
# scoreboard objectives add id dummy
# scoreboard players set $id id 0
# execute as @a[tag=playing,sort=random] at @s run function game:generate_id

# Pick kitchens
execute if score $mode settings matches 0..1 run scoreboard players operation @a[tag=playing] map = $map settings
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
scoreboard players set @a[gamemode=adventure,tag=playing,tag=!team_2,limit=1] recipe_cooldown 65
scoreboard players set @a[gamemode=adventure,tag=playing,tag=team_2,limit=1] recipe_cooldown 65

# Start timer
execute if score $mode settings matches 0..1 run function game:timers/normal_setup
execute if score $mode settings matches 2 run function game:timers/shuffle_setup

# Setting the button
setblock -9 17 -10 air
scoreboard players set $button pregame 5