# Called to get salsa
clear @s red_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:red_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/salsa
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/salsa
loot replace entity @s[type=item_display] container.0 loot game:food/tacos/salsa
scoreboard players set @s[type=armor_stand] ingredient 35
scoreboard players set @s[type=item_display] ingredient 35