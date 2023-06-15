# Called to get a tortilla
clear @s birch_pressure_plate
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:birch_pressure_plate"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/tortilla
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/tortilla
loot replace entity @s[type=item_display] container.0 loot game:food/tacos/tortilla
scoreboard players set @s[type=armor_stand] ingredient 31
scoreboard players set @s[type=item_display] ingredient 31