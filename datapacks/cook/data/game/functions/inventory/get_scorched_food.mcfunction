# Called to get raw hamburger
clear @s charcoal
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:charcoal"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/scorched_food
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/scorched_food
scoreboard players set @s[type=armor_stand] ingredient 11