# Bob and spin
scoreboard players operation $bob game_ticks = $const game_ticks
scoreboard players operation $bob game_ticks %= $40 number
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s if score $bob game_ticks matches ..19 run tp @s ~ ~-.005 ~ ~3 ~
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s if score $bob game_ticks matches 20..39 run tp @s ~ ~.005 ~ ~3 ~

# Fixing ingredient boxes not getting ingredients
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s positioned ~ ~1.65 ~ as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s unless score @s ingredient matches -2147483648.. run function game:stations/fix_ingredient_box 