# Called to get a hamburger
clear @s cooked_beef
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:cooked_beef"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/burgers/hamburger
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/burgers/hamburger
loot replace entity @s[type=item_display] container.0 loot game:food/burgers/hamburger
scoreboard players set @s[type=armor_stand] ingredient 9
scoreboard players set @s[type=item_display] ingredient 9