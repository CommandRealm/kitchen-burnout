# Called to get chocolate ice cream
clear @s brown_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:brown_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/chocolate
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/chocolate
scoreboard players set @s[type=armor_stand] ingredient 42