##Called to get raw hamburger
clear @s beef
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:beef"}}]
loot replace entity @s hotbar.4 loot game:food/raw_hamburger