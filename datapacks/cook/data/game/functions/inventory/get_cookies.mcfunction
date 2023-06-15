# Called to get cookies n cream ice cream
clear @s light_gray_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:light_gray_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/cookies
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/cookies_m
loot replace entity @s[type=item_display] container.0 loot game:food/ice_cream/cookies_m
scoreboard players set @s[type=armor_stand] ingredient 44
scoreboard players set @s[type=item_display] ingredient 44