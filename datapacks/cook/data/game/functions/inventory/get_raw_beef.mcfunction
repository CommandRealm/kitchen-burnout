# Called to get raw ground beef
clear @s nether_wart
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/raw_beef
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/raw_beef
scoreboard players set @s[type=armor_stand] ingredient 32