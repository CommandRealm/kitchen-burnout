# Called to get strawberry ice cream
clear @s pink_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:pink_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/strawberry
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/strawberry_m
scoreboard players set @s[type=armor_stand] ingredient 43