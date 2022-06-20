# Called to get a cone
clear @s pointed_dripstone
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:pointed_dripstone"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/cone
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/cone_m
scoreboard players set @s[type=armor_stand] ingredient 39