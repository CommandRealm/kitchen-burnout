# Drop ingredients
scoreboard players operation $honey_wall game_ticks = $const game_ticks
scoreboard players operation $honey_wall game_ticks %= $20 number

execute if score $honey_wall game_ticks matches 0 run scoreboard players set $mod random 5
execute if score $honey_wall game_ticks matches 0 run function random:random
execute if score $honey_wall game_ticks matches 0 run scoreboard players operation $ingredient random = $output random
execute if score $honey_wall game_ticks matches 0 if entity @a[gamemode=adventure,tag=playing,scores={map=17},tag=!team_2] run function game:map/17/summon_ingredient
execute if score $honey_wall game_ticks matches 0 if entity @a[gamemode=adventure,tag=playing,scores={map=17},tag=team_2] run function game:map/17/summon_ingredient_2
execute if score $honey_wall game_ticks matches 0 run scoreboard players reset $ingredient random

# Picking up ingredients
execute as @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0}] at @s run tag @e[type=item,tag=honey_wall_pickup,distance=..1.5,sort=nearest,limit=1] add pickup_now
execute as @e[type=item,tag=honey_wall_pickup,tag=pickup_now] at @s run function game:map/17/pickup

# Remove glowing once visible
execute if score $glowing settings matches 1 as @e[type=item,tag=honey_wall_pickup] at @s if entity @s[y=73,dy=1] run data merge entity @s {Glowing:0b}
# Killing items that fell
execute as @e[type=item,tag=honey_wall_pickup] at @s if entity @s[y=62,dy=1] run kill @s
# Resetting players that fell
execute as @a[gamemode=adventure,tag=playing,scores={map=17}] at @s if entity @s[y=62,dy=1] run function game:map/17/falling