# Called to get a cherry
clear @s poppy
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:poppy"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/cherry
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/cherry
scoreboard players set @s[type=armor_stand] ingredient 49