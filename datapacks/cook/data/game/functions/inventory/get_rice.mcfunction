# Called to get sushi rice
clear @s bone_meal
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:bone_meal"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/rice
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/rice_modeled
loot replace entity @s[type=item_display] container.0 loot game:food/sushi/rice_modeled
scoreboard players set @s[type=armor_stand] ingredient 12
scoreboard players set @s[type=item_display] ingredient 12