# Called to get the normal "warping" trident
clear @s trident
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:trident"}}]
item replace entity @s hotbar.2 with trident{HideFlags: 63, display: {Name: '[{"translate":"Warping Trident","color":"#be03fc","italic":false}]'}, CustomModelData: 1, Unbreakable:1b}