# Called to get wasabi
clear @s green_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/wasabi
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/wasabi
scoreboard players set @s[type=armor_stand] ingredient 20