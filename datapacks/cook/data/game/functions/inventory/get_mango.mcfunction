# Called to get mango ice cream
clear @s orange_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:orange_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/mango
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/mango_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/mango_m
scoreboard players set @s[type=armor_stand] ingredient 46
scoreboard players set @s[type=item_display] ingredient 46