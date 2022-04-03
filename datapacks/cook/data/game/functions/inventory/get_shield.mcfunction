# Called to get the shield
clear @s shield
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:shield"}}]
item replace entity @s hotbar.1 with shield{HideFlags: 63, display: {Name: '[{"translate":"Shield","color":"#b38300","italic":false}]'}, CustomModelData: 1, Unbreakable:1b}