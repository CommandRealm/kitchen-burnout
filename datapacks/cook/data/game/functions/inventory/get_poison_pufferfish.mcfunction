# Called to get poison pufferfish
clear @s kelp
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:kelp"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/poison_pufferfish
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/poison_pufferfish
scoreboard players set @s[type=armor_stand] ingredient 17