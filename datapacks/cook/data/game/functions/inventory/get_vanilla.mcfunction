# Called to get vanilla ice cream
clear @s white_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:white_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/vanilla
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/vanilla_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/vanilla_m
scoreboard players set @s[type=armor_stand] ingredient 41
scoreboard players set @s[type=item_display] ingredient 41