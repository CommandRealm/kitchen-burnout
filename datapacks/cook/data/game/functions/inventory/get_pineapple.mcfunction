# Called to get a pineapple
clear @s player_head
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:player_head"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/pineapple
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/pineapple
loot replace entity @s[type=item_display] container.0 loot game:food/pizza/pineapple
scoreboard players set @s[type=armor_stand] ingredient 26
scoreboard players set @s[type=item_display] ingredient 26