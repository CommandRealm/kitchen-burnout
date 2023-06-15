# Called to get a cherry
clear @s poppy
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:poppy"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/cherry
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/cherry_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/cherry_m
scoreboard players set @s[type=armor_stand] ingredient 49
scoreboard players set @s[type=item_display] ingredient 49