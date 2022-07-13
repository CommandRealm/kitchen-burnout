# Progress to the next kitchen
scoreboard players add $food_type_2 shuffle 1
execute if score $food_type_2 shuffle matches 1 run scoreboard players operation $map_2 shuffle = $burgers_map shuffle 
execute if score $food_type_2 shuffle matches 2 run scoreboard players operation $map_2 shuffle = $sushi_map shuffle 
execute if score $food_type_2 shuffle matches 3 run scoreboard players operation $map_2 shuffle = $tacos_map shuffle 
execute if score $food_type_2 shuffle matches 4 run scoreboard players operation $map_2 shuffle = $ice_cream_map shuffle

# Announce
execute unless score $food_type_2 shuffle matches 5.. run tellraw @a ["",{"text":"\u2010 ","color":"gold","bold":true},{"translate":"The Forks are in kitchen ","color":"gray"},{"score":{"name":"$food_type_2","objective":"shuffle"},"color":"red","bold":false},{"text":"/4","color":"red","bold":false}]
execute unless score $food_type_2 shuffle matches 5.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 100000000 .5 1

# Reset ingredient
execute unless score $food_type_2 shuffle matches 5.. run tag @a[gamemode=adventure,tag=playing,tag=team_2] remove using_cutting_board
execute unless score $food_type_2 shuffle matches 5.. run scoreboard players set @a[gamemode=adventure,tag=playing,tag=team_2] ingredient 0
execute unless score $food_type_2 shuffle matches 5.. run clear @a[gamemode=adventure,tag=playing,tag=team_2]
execute unless score $food_type_2 shuffle matches 5.. run advancement grant @a[gamemode=adventure,tag=playing,tag=team_2] only game:inventory_changed

# Reset current kitchen
execute unless score $food_type_2 shuffle matches 5.. as @e[type=marker,tag=reset_boxes,distance=..500] at @s run function game:map/reset_boxes
execute unless score $food_type_2 shuffle matches 5.. as @e[type=marker,tag=thin_ice,distance=..500] at @s run scoreboard players set @s thin_ice 295
execute unless score $food_type_2 shuffle matches 5.. as @e[type=marker,tag=thin_ice,distance=..500] at @s run function game:map/29/ice
execute unless score $food_type_2 shuffle matches 5.. run tag @e[tag=die_between_games,distance=..500] add die_2
execute unless score $food_type_2 shuffle matches 5.. run tp @e[tag=die_between_games,tag=die_2] 0 0 0
execute unless score $food_type_2 shuffle matches 5.. run kill @e[tag=die_between_games,tag=die_2]

# Setup the next map
execute unless score $food_type_2 shuffle matches 5.. run scoreboard players operation @a[gamemode=adventure,tag=playing,tag=team_2] map = $map_2 shuffle 
execute unless score $food_type_2 shuffle matches 5.. run function game:map/setups_2

# If 5 --> win
execute if score $food_type_2 shuffle matches 5.. run scoreboard players set $winner shuffle 2