# Called to get raw hamburger
clear @s beef
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:beef"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/burgers/half_cooked_hamburger
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/burgers/half_cooked_hamburger
loot replace entity @s[type=item_display] container.0 loot game:food/burgers/half_cooked_hamburger
scoreboard players set @s[type=armor_stand] ingredient 8
scoreboard players set @s[type=item_display] ingredient 8