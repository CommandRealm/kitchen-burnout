# Called to get a tomato slice
clear @s red_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
loot replace entity @s hotbar.4 loot game:food/tomato_slice