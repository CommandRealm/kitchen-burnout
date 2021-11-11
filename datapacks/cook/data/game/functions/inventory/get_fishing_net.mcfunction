# Called to get the fishing net
clear @s cobweb
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:cobweb"}}]
item replace entity @s hotbar.1 with cobweb{HideFlags: 63, display: {Name: '[{"translate":"Fishing Net","color":"#c48e0e","italic":false}]'}, CustomModelData: 1}