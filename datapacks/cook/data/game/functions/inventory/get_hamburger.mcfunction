##Called to get a hamburger
clear @s cooked_beef
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cooked_beef"}}]
loot replace entity @s hotbar.4 loot game:food/hamburger