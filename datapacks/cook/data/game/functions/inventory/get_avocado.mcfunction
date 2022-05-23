# Called to get an avocado
clear @s charcoal
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:charcoal"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/avocado
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/avocado
scoreboard players set @s[type=armor_stand] ingredient 18