# Called to get cookie dough
clear @s beetroot_seeds
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/ice_cream/cookie_dough
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/ice_cream/cookie_dough
scoreboard players set @s[type=armor_stand] ingredient 50