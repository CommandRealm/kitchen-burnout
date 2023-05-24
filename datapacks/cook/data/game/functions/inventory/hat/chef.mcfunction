# Called to get the chef hat
clear @s stone_button
execute at @s run kill @e[type=item,tag=!honey_wall_pickup,nbt={Item:{id:"minecraft:stone_button"}}]
item replace entity @s[scores={hat=1}] armor.head with stone_button{CustomModelData: 1, display: {Name: '[{"translate":"Chef Hat","color":"gray"}]'}}
item replace entity @s[scores={hat=2}] armor.head with stone_button{CustomModelData: 2, display: {Name: '[{"translate":"Chef Hat","color":"gray"}]'}}
item replace entity @s[scores={hat=3}] armor.head with stone_button{CustomModelData: 4, display: {Name: '[{"translate":"Chef Hat","color":"gray"}]'}}
item replace entity @s[scores={hat=4}] armor.head with stone_button{CustomModelData: 6, display: {Name: '[{"translate":"Burger","color":"gray"}]'}}
item replace entity @s[scores={hat=5}] armor.head with stone_button{CustomModelData: 7, display: {Name: '[{"translate":"Sushi","color":"gray"}]'}}
item replace entity @s[scores={hat=6}] armor.head with stone_button{CustomModelData: 8, display: {Name: '[{"translate":"Taco","color":"gray"}]'}}
item replace entity @s[scores={hat=7}] armor.head with stone_button{CustomModelData: 9, display: {Name: '[{"translate":"Ice Cream","color":"gray"}]'}}
item replace entity @s[scores={hat=8}] armor.head with stone_button{CustomModelData: 10, display: {Name: '[{"translate":"Cake","color":"green"}]'}}
item replace entity @s[scores={hat=9}] armor.head with stone_button{CustomModelData: 5, display: {Name: '[{"translate":"Guac","color":"green"}]'}}
item replace entity @s[scores={hat=10}] armor.head with stone_button{CustomModelData: 3, display: {Name: '[{"translate":"Top Hat","color":"gray"}]'}}
item replace entity @s[scores={hat=11}] armor.head with stone_button{CustomModelData: 11, display: {Name: '[{"translate":"Gene","color":"blue","italic":false},{"translate":" Plush","color":"aqua"},{"translate":" Hat","color":"yellow"}]'}}