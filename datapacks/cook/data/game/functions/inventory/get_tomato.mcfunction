# Called to get a tomato
clear @s player_head
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tomato
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tomato
scoreboard players set @s[type=armor_stand] ingredient 5