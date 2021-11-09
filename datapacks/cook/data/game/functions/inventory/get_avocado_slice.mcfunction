# Called to get an avocado
clear @s lime_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/avocado_slice
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/avocado_slice
scoreboard players set @s[type=armor_stand] ingredient 19