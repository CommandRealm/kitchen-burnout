##Called to get raw hamburger
clear @s charcoal
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:charcoal"}}]
loot replace entity @s hotbar.4 loot game:food/scorched_food