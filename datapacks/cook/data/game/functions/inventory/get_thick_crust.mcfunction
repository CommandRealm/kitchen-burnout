# Called to get a deep-dish crust
clear @s birch_slab
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:birch_slab"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/thick_crust
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/thick_crust
scoreboard players set @s[type=armor_stand] ingredient 27