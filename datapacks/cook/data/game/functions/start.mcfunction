# Function for the when the game first starts.
scoreboard players set $game state 1

scoreboard players set $time game 0

scoreboard players reset $finished_recipes game
scoreboard players reset $score game

execute if score $mode settings matches 0 run scoreboard players set $finished_recipes game 0
execute if score $mode settings matches 0 run scoreboard players set $score game 0

# Giving people the playing tag
tag @a[scores={ready=1..}] add playing
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]


# Give players temporary effects
effect give @a[tag=playing] instant_health 1 9 true
effect give @a[tag=playing] blindness 6 255 true
effect give @a[tag=playing] slowness 5 255 true
effect give @a[tag=playing] jump_boost 5 128 true

# joining game team
team join game @a[tag=playing]

tag @a[tag=playing] remove tutorial

# Resetting end cooldown things
scoreboard players reset $end game

# Title times
title @a[tag=playing] times 0 25 5

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

execute if score $mode settings matches 0 run scoreboard players operation @a[tag=playing] map = $map settings

# Setting up the map.
kill @e[type=area_effect_cloud,tag=station_placer]
execute if score $map settings matches 1 run function game:map/1/teleport
execute if score $map settings matches 11 run function game:map/11/teleport
schedule function game:map/setup_stations 20t

# Recipe generation
execute if score $mode settings matches 0 run function game:default/generate_recipes
scoreboard players set @a[gamemode=adventure,tag=playing,limit=1] recipe_cooldown 65

# Start timer
execute if score $mode settings matches 0 run function game:timers/normal_setup

# Setting the button
setblock -9 17 -10 air
scoreboard players set $button pregame 5