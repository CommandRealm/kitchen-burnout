# Called to get mint ice cream
clear @s lime_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:lime_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/mint
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/mint_m
scoreboard players set @s[type=armor_stand] ingredient 45