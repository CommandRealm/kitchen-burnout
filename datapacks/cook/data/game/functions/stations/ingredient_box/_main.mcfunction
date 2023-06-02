## Fixing ingredient boxes not getting ingredients
#execute as @e[type=armor_stand,tag=ingredient_box_display] at @s positioned ~ ~1.65 ~ as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s unless score @s ingredient matches -2147483648.. run function game:stations/fix_ingredient_box
#execute as @e[type=armor_stand,tag=ingredient_box_display] unless data entity @s ArmorItems[3].id at @s positioned ~ ~1.65 ~ as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s run function game:stations/fix_ingredient_box
#execute as @e[type=magma_cube,tag=ingredient_box_outline,team=!recipe_filled,team=!recipe_missing,team=!no_collision] at @s as @e[type=marker,tag=ingredient_box,distance=..0.5] at @s run function game:stations/fix_ingredient_box

execute as @e[type=item_display,tag=ingredient_box_display] at @s run tp @s ~ ~ ~ ~3 ~

execute as @e[type=interaction,tag=ingredient_box] at @s run function game:stations/ingredient_box/zzz_check_click