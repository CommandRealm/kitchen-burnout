# Called to get a fresh pufferfish
clear @s pufferfish
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:pufferfish"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/pufferfish
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/pufferfish
scoreboard players set @s[type=armor_stand] ingredient 14