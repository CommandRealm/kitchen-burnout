# Called to get chocolate ice cream
clear @s brown_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:brown_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/chocolate
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/chocolate_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/chocolate_m
scoreboard players set @s[type=armor_stand] ingredient 42
scoreboard players set @s[type=item_display] ingredient 42