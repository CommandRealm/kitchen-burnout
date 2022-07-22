# Called to get an elytra
clear @s elytra
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:elytra"}}]
item replace entity @s armor.chest with elytra{HideFlags: 63, display: {Name: '[{"translate":"Elytra","color":"#bd4ef5","italic":false}]'}, CustomModelData: 1, Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}