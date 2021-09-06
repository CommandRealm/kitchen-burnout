# Called to get bread
clear @s bread
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bread"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/bun
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/bun
scoreboard players set @s[type=armor_stand] ingredient 1