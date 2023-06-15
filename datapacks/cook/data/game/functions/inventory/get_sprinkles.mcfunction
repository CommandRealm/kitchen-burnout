# Called to get sprinkles
clear @s brain_coral
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:brain_coral"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/sprinkles
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/sprinkles_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/sprinkles_m
scoreboard players set @s[type=armor_stand] ingredient 47
scoreboard players set @s[type=item_display] ingredient 47