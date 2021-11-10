# Called to get a tomato slice
clear @s red_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/burgers/tomato_slice
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/burgers/tomato_slice
scoreboard players set @s[type=armor_stand] ingredient 6