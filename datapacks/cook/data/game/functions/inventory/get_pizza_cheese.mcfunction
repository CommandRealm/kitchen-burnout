# Called to get pizza cheese
clear @s yellow_carpet
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:yellow_carpet"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/pizza_cheese
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/pizza_cheese
loot replace entity @s[type=item_display] container.0 loot game:food/pizza/pizza_cheese
scoreboard players set @s[type=armor_stand] ingredient 23
scoreboard players set @s[type=item_display] ingredient 23