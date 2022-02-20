# Called to get a bowl
clear @s bowl
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bowl"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/bowl
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/bowl
scoreboard players set @s[type=armor_stand] ingredient 40