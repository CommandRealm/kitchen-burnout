# Called to get guacamole
clear @s moss_carpet
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:moss_carpet"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/tacos/guac
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/tacos/guac
scoreboard players set @s[type=armor_stand] ingredient 34