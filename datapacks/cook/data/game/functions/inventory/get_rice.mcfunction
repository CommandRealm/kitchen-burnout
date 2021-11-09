# Called to get sushi rice
clear @s bone_meal
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bone_meal"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/rice
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/rice
scoreboard players set @s[type=armor_stand] ingredient 12