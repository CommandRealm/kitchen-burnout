# Called to create a prep station ingredient, takes in an ingredient ID
tag @e[type=item_display,tag=prep] remove needs_ingredient
summon interaction ~ ~ ~ {Tags:["prep","prep_ingredient","collapsed","interactable","die_between_games"],height:0.065f,width:0.75f,Passengers:[{id:"item_display",Tags:["prep","prep_ingredient","die_between_games","needs_ingredient"],transformation:{left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,1.0f],translation:[0f,-0.0325f,0f]}}]}

$execute as @n[type=item_display,tag=prep_ingredient,tag=needs_ingredient,distance=..0.5] run function game:inventory/get_ingredient {slot:"container.0",id:$(id)}

execute if score @s prep_display matches 1.. as @n[type=interaction,tag=prep_ingredient,distance=..0.5] run function game:stations/prep/ingredient/expand