# Called to get mushroom slices
clear @s cocoa_beans
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:cocoa_beans"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/cut_mushroom
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/cut_mushroom
scoreboard players set @s[type=armor_stand] ingredient 29