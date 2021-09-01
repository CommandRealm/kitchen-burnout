# Called to get the chef hat
clear @s stone_button
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stone_button"}}]
item replace entity @s armor.head with stone_button{CustomModelData: 1, display: {Name: '[{"text":"Chef","color":"white","italic":false},{"text":" Hat","color":"gray"}]'}}