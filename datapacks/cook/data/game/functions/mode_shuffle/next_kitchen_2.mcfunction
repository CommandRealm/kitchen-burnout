scoreboard players add $food_type_2 shuffle 1
execute if score $food_type_2 shuffle matches 1 run scoreboard players operation $map_2 shuffle = $burgers_map shuffle 
execute if score $food_type_2 shuffle matches 2 run scoreboard players operation $map_2 shuffle = $sushi_map shuffle 
execute if score $food_type_2 shuffle matches 3 run scoreboard players operation $map_2 shuffle = $tacos_map shuffle 
execute if score $food_type_2 shuffle matches 4 run scoreboard players operation $map_2 shuffle = $ice_cream_map shuffle

scoreboard players set @a[gamemode=adventure,tag=playing,tag=team_2] ingredient 0
advancement grant @a[gamemode=adventure,tag=playing,tag=team_2] only game:inventory_changed

scoreboard players operation @a[gamemode=adventure,tag=playing,tag=team_2] map = $map_2 shuffle 
function game:map/setups_2

# if 5 --> win