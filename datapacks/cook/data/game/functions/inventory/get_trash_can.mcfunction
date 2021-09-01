# Called to get raw hamburger
clear @s structure_void
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}]
item replace entity @s hotbar.8 with structure_void{HideFlags: 63, CustomModelData: 1, display: {Name: '[{"text":"Trash","color":"dark_gray","italic":false},{"text":" Can","color":"gray"}]'}}