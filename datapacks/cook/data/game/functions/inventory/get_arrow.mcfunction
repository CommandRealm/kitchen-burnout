# Called to get the arrow
clear @s arrow
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:arrow"}}]
item replace entity @s inventory.26 with arrow{HideFlags: 63, display: {Name: '[{"translate":"Arrow","color":"#dedfe0","italic":false}]'}, CustomModelData: 1, Unbreakable:1b}