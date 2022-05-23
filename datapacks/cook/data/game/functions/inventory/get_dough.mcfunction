# Called to get pizza dough
clear @s stripped_birch_wood
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:stripped_birch_wood"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/dough
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/dough
scoreboard players set @s[type=armor_stand] ingredient 21