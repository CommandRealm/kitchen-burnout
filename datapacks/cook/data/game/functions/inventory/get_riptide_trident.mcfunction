# Called to get the riptide trident
clear @s trident
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:trident"}}]
item replace entity @s hotbar.2 with trident{HideFlags: 63, display: {Name: '[{"translate":"Riptide Trident","color":"#34e1eb","italic":false}]'}, CustomModelData: 1, Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:2}]}