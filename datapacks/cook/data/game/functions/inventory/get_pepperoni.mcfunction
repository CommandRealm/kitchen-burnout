# Called to get pepperoni
clear @s nether_wart
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/pepperoni
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/pepperoni
scoreboard players set @s[type=armor_stand] ingredient 24