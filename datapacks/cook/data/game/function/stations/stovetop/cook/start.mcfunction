# Takes in the cooking start point (start), transform_point, and the timer category (type)
# Called by a stovetop that has just had a cookable ingredient placed on it
tag @s add cooking
tag @s remove hamburger_timer
tag @s remove beef_taco_timer
tag @s remove scorched_food_timer
$scoreboard players set @s station_timer $(start)
$scoreboard players set @s station $(transform_point)
$tag @s add $(type)_timer

# Create the cooking indicator text display
execute unless entity @e[type=text_display,tag=stovetop,distance=..0.5] run summon text_display ~ ~0.49 ~ {Tags:["stovetop","die_between_games"],billboard:"center",alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0f,0f]}}
function game:stations/stovetop/cook/update_indicator
return 1