# Bob and spin
scoreboard players operation $bob game_ticks = $const game_ticks
scoreboard players operation $bob game_ticks %= $40 number
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s if score $bob game_ticks matches ..19 run tp @s ~ ~-.005 ~ ~3 ~
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s if score $bob game_ticks matches 20..39 run tp @s ~ ~.005 ~ ~3 ~