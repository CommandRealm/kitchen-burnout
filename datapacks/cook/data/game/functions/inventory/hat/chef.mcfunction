# Called to get the chef hat
clear @s stone_button
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:stone_button"}}]
item replace entity @s armor.head with stone_button{CustomModelData: 1, display: {Name: '[{"translate":"Chef","color":"white","italic":false},{"translate":" Hat","color":"gray"}]'}}