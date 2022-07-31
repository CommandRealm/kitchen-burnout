# Bob and spin
scoreboard players operation $bob game_ticks = $const game_ticks
scoreboard players operation $bob game_ticks %= $40 number
execute as @e[type=armor_stand,tag=ingredient_box_display,tag=!bob] at @s if score $bob game_ticks matches 0 run tag @s add bob
execute as @e[type=armor_stand,tag=ingredient_box_display,tag=bob] at @s if score $bob game_ticks matches ..19 run tp @s ~ ~-.005 ~ ~3 ~
execute as @e[type=armor_stand,tag=ingredient_box_display,tag=bob] at @s if score $bob game_ticks matches 20..39 run tp @s ~ ~.005 ~ ~3 ~

# Fix ingredients sinking below the box
execute as @e[type=armor_stand,tag=ingredient_box_display,tag=bob] at @s unless entity @e[type=marker,tag=ingredient_box,distance=..1.76] positioned as @e[type=marker,tag=ingredient_box,distance=..2,limit=1,sort=nearest] run tp @s ~ ~-1.65 ~

# Fixing ingredient boxes not getting ingredients
execute as @e[type=armor_stand,tag=ingredient_box_display] at @s positioned ~ ~1.65 ~ as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s unless score @s ingredient matches -2147483648.. run function game:stations/fix_ingredient_box
execute as @e[type=armor_stand,tag=ingredient_box_display] unless data entity @s ArmorItems[3].id at @s positioned ~ ~1.65 ~ as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s run function game:stations/fix_ingredient_box
execute as @e[type=magma_cube,tag=ingredient_box_outline,team=!recipe_filled,team=!recipe_missing,team=!no_collision] at @s as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s run function game:stations/fix_ingredient_box