# Drop ingredients
scoreboard players operation $honey_wall game_ticks = $timer game_ticks
scoreboard players operation $honey_wall game_ticks %= $20 number
execute if score $honey_wall game_ticks matches 0 run function game:map/17/summon_ingredient

# Picking up ingredients
execute as @e[type=item,tag=honey_wall_pickup] at @s if entity @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1] run function game:map/17/pickup

# Killing items that fell
execute as @e[type=item,tag=honey_wall_pickup] at @s[y=62,dy=1] run kill @s
# Resetting players that fell
execute as @a[gamemode=adventure,tag=playing,scores={map=17}] at @s[y=62,dy=1] run function game:map/17/falling