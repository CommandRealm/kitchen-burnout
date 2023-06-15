# Called to get shredded lettuce
clear @s seagrass
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:seagrass"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/lettuce_shreds
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/lettuce_shreds
loot replace entity @s[type=item_display] container.0 loot game:food/tacos/lettuce_shreds
scoreboard players set @s[type=armor_stand] ingredient 38
scoreboard players set @s[type=item_display] ingredient 38