# Called to get raw hamburger
clear @s charcoal
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:charcoal"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/burgers/burnt_hamburger
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/burgers/burnt_hamburger
scoreboard players set @s[type=armor_stand] ingredient 10