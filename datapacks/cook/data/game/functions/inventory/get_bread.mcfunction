##Called to get bread
clear @s bread
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bread"}}]
loot replace entity @s hotbar.4 loot game:food/bun