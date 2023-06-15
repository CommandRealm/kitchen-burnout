# Called to get poison pufferfish
clear @s kelp
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:kelp"}}]
loot replace entity @s[type=player] hotbar.4 loot game:food/sushi/poison_pufferfish
loot replace entity @s[type=armor_stand] weapon.mainhand loot game:food/sushi/poison_pufferfish_modeled
loot replace entity @s[type=item_display] container.0 loot game:food/sushi/poison_pufferfish_modeled
scoreboard players set @s[type=armor_stand] ingredient 17
scoreboard players set @s[type=item_display] ingredient 17
# Poison pufferfish advancement
advancement grant @s only advancements:general_poison