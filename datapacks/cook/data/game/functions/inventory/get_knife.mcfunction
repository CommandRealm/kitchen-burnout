# Called to get the knife
clear @s iron_sword
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:iron_sword"}}]
item replace entity @s hotbar.0 with iron_sword{HideFlags: 63, display: {Name: '[{"translate":"Knife","color":"gray","italic":false}]'}, CustomModelData: 1}