# Called to get vanilla ice cream
clear @s white_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/vanilla
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/vanilla
scoreboard players set @s[type=armor_stand] ingredient 41