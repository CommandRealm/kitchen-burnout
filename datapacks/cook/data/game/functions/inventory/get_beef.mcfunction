# Called to get cooked ground beef
clear @s brown_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:brown_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/beef
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/beef
loot replace entity @s[type=item_display] container.0 loot game:food/tacos/beef
scoreboard players set @s[type=armor_stand] ingredient 37
scoreboard players set @s[type=item_display] ingredient 37