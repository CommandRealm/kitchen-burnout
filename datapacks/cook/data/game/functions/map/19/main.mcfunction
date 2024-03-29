# New meteor
scoreboard players operation $meteor game_ticks = $const game_ticks
scoreboard players operation $meteor game_ticks %= $40 number
execute if score $meteor game_ticks matches 0 run scoreboard players set $mod random 2
execute if score $meteor game_ticks matches 0 run function random:random
execute if score $meteor game_ticks matches 0 if score $output random matches 0 run function game:map/19/try_new_meteor

# Move meteors
execute as @e[type=giant,tag=meteor] at @s run function game:map/19/move

# Danger zones
execute as @e[type=marker,tag=danger_zone] at @s run function game:map/19/danger_zone

execute as @a[gamemode=adventure,tag=playing,scores={map=19}] at @s unless data entity @s {Fire:-20s} unless score @s ingredient matches 0 unless score @s ingredient matches 11 run function game:map/19/burn
# Falling (need to do timer based system)
execute as @a[gamemode=adventure,tag=playing,scores={map=19}] at @s if entity @s[y=-30,dy=90] run function game:map/19/falling