# Called to get cut salmon
clear @s orange_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/cut_salmon
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/cut_salmon
scoreboard players set @s[type=armor_stand] ingredient 15