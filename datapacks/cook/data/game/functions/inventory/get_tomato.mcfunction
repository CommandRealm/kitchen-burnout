# Called to get a tomato
clear @s apple
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:apple"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/burgers/tomato
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/burgers/tomato
loot replace entity @s[type=item_display] container.0 loot game:food/burgers/tomato
scoreboard players set @s[type=armor_stand] ingredient 5
scoreboard players set @s[type=item_display] ingredient 5