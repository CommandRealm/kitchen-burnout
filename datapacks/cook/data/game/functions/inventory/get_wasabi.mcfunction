# Called to get wasabi
clear @s green_dye
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:green_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/wasabi
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/wasabi_modeled
loot replace entity @s[type=item_display] container.0 loot game:food/sushi/wasabi_modeled
scoreboard players set @s[type=armor_stand] ingredient 20
scoreboard players set @s[type=item_display] ingredient 20