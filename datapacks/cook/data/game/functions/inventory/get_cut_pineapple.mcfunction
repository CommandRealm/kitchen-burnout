# Called to get pineapple chunks
clear @s yellow_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:yellow_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/cut_pineapple
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/cut_pineapple
scoreboard players set @s[type=armor_stand] ingredient 30