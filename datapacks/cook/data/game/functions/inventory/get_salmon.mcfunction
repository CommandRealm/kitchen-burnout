# Called to get a fresh salmon
clear @s salmon
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:salmon"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/salmon
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/salmon
scoreboard players set @s[type=armor_stand] ingredient 13