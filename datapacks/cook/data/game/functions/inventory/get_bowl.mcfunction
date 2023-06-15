# Called to get a bowl
clear @s bowl
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:bowl"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/bowl
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/bowl_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/bowl_m
scoreboard players set @s[type=armor_stand] ingredient 40
scoreboard players set @s[type=item_display] ingredient 40