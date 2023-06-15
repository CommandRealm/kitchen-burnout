# Called to get pizza sauce
clear @s red_carpet
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:red_carpet"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/sauce
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/sauce
loot replace entity @s[type=item_display] container.0 loot game:food/pizza/sauce
scoreboard players set @s[type=armor_stand] ingredient 22
scoreboard players set @s[type=item_display] ingredient 22