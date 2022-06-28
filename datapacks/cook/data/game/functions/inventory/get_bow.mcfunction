# Called to get the bow
clear @s bow
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:bow"}}]
item replace entity @s hotbar.1 with bow{HideFlags: 63, display: {Name: '[{"translate":"Bow","color":"#b38300","italic":false}]'}, CustomModelData: 1, Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}