# Called to get bread
clear @s green_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}]
loot replace entity @s hotbar.4 loot game:food/lettuce_leaf