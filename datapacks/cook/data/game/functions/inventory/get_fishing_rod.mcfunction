# Called to get the fishing rod
clear @s fishing_rod
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:fishing_rod"}}]
item replace entity @s hotbar.1 with fishing_rod{HideFlags: 63, display: {Name: '[{"translate":"Fishing Rod","color":"#b38300","italic":false}]'}, CustomModelData: 1, Unbreakable:1b}