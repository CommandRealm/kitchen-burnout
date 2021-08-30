##Called to get bread
clear @s yellow_dye
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}]
loot replace entity @s hotbar.4 loot game:food/cheese