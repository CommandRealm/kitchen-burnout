# Pick kitchen for each category
scoreboard players set $mod random 5
function random:random
execute if score $output random matches 0 run scoreboard players set $burgers_map shuffle 1
execute if score $output random matches 1 run scoreboard players set $burgers_map shuffle 2
execute if score $output random matches 2 run scoreboard players set $burgers_map shuffle 5
execute if score $output random matches 3 run scoreboard players set $burgers_map shuffle 9
execute if score $output random matches 4 run scoreboard players set $burgers_map shuffle 17

scoreboard players set $mod random 5
function random:random
execute if score $output random matches 0 run scoreboard players set $sushi_map shuffle 11
execute if score $output random matches 1 run scoreboard players set $sushi_map shuffle 12
execute if score $output random matches 2 run scoreboard players set $sushi_map shuffle 13
execute if score $output random matches 3 run scoreboard players set $sushi_map shuffle 14
execute if score $output random matches 4 run scoreboard players set $sushi_map shuffle 15

scoreboard players set $mod random 4
function random:random
execute if score $output random matches 0 run scoreboard players set $tacos_map shuffle 8
execute if score $output random matches 1 run scoreboard players set $tacos_map shuffle 18
execute if score $output random matches 2 run scoreboard players set $tacos_map shuffle 22
execute if score $output random matches 3 run scoreboard players set $tacos_map shuffle 25

scoreboard players set $mod random 5
function random:random
execute if score $output random matches 0 run scoreboard players set $ice_cream_map shuffle 26
execute if score $output random matches 1 run scoreboard players set $ice_cream_map shuffle 27
execute if score $output random matches 2 run scoreboard players set $ice_cream_map shuffle 28
execute if score $output random matches 3 run scoreboard players set $ice_cream_map shuffle 29
execute if score $output random matches 4 run scoreboard players set $ice_cream_map shuffle 30

# Set starting food categories
scoreboard players set $food_type_1 shuffle 1
scoreboard players set $food_type_2 shuffle 1

# Assign map values
scoreboard players operation $map_1 shuffle = $burgers_map shuffle
scoreboard players operation $map_2 shuffle = $burgers_map shuffle
scoreboard players operation @a[tag=playing,tag=!tutorial] map = $burgers_map shuffle

# Reset winning stuff
scoreboard players set $winner shuffle 0
scoreboard players set $end_timer shuffle 0