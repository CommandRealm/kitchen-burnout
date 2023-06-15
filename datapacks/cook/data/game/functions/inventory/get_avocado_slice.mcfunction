# Called to get an avocado
clear @s lime_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:lime_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/avocado_slice
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/avocado_slice_modeled
loot replace entity @s[type=item_display] container.0 loot game:food/sushi/avocado_slice_modeled
scoreboard players set @s[type=armor_stand] ingredient 19
scoreboard players set @s[type=item_display] ingredient 19