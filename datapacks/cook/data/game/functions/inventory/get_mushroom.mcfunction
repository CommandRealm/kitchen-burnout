# Called to get a mushroom
clear @s brown_mushroom
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:brown_mushroom"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/mushroom
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/mushroom
scoreboard players set @s[type=armor_stand] ingredient 25