# Called to get taco cheese
clear @s yellow_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:yellow_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/taco_cheese
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/taco_cheese
scoreboard players set @s[type=armor_stand] ingredient 33