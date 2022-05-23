# Called to get a thin crust
clear @s birch_pressure_plate
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:birch_pressure_plate"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/thin_crust
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/thin_crust
scoreboard players set @s[type=armor_stand] ingredient 28