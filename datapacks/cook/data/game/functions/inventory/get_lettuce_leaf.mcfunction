# Called to get bread
clear @s green_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/lettuce_leaf
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/lettuce_leaf
scoreboard players set @s[type=armor_stand] ingredient 4