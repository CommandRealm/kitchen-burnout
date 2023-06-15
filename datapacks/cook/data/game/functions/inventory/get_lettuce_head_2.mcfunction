# Called to get lettuce head (for tacos)
clear @s cactus
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:cactus"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/lettuce_head_2
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/lettuce_head_2
loot replace entity @s[type=item_display] container.0 loot game:food/lettuce_head_2
scoreboard players set @s[type=armor_stand] ingredient -3
scoreboard players set @s[type=item_display] ingredient -3