##Called to get the knife
clear @s iron_sword
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]
item replace entity @s hotbar.0 with iron_sword{HideFlags: 63, display: {Name: '[{"text":"Knife","color":"gray","italic":false}]'}, CustomModelData: 1}