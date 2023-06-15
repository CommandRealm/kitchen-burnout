# Called to get a deep-dish crust
clear @s birch_slab
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:birch_slab"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pizza/thick_crust
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pizza/thick_crust
loot replace entity @s[type=item_display] container.0 loot game:food/pizza/thick_crust
scoreboard players set @s[type=armor_stand] ingredient 27
scoreboard players set @s[type=item_display] ingredient 27