# Called to get a hamburger
clear @s cooked_beef
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cooked_beef"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/hamburger
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/hamburger
scoreboard players set @s[type=armor_stand] ingredient 9