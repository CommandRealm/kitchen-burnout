# Called to get sour cream
clear @s string
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:string"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/sour_cream
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/sour_cream
scoreboard players set @s[type=armor_stand] ingredient 36