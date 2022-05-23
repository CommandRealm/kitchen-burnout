# Called to get a fresh salmon
clear @s salmon
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:salmon"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/salmon
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/salmon
scoreboard players set @s[type=armor_stand] ingredient 13