# Called to get cut pufferfish
clear @s yellow_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:yellow_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/cut_pufferfish
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/cut_pufferfish_modeled
loot replace entity @s[type=item_display] container.0 loot game:food/sushi/cut_pufferfish_modeled
scoreboard players set @s[type=armor_stand] ingredient 16
scoreboard players set @s[type=item_display] ingredient 16