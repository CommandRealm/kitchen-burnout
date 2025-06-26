# Called to create a prep station ingredient, takes in an ingredient ID
tag @e[type=item_display,tag=prep] remove needs_ingredient
summon item_display ~ ~0.05 ~ { \
    Tags:["prep","prep_ingredient","die_between_games","needs_ingredient"], \
    teleport_duration:10,transformation:{ \
        left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f], scale:[0.65f,0.65f,1.0f],translation:[0f,0f,0f]}}

$execute as @n[type=item_display,tag=prep_ingredient,tag=needs_ingredient,distance=..0.5] run \
    function game:inventory/get_ingredient {entity:"@s", slot:"container.0", id:"$(id)"}

# Add the ingredient to the prep station's list
$data modify entity @s data.ingredients append value "$(id)"
$data modify entity @s data.formatted_ingredients append value {"translate":"ingredient.$(id).name","color":"green"}

# Set the ingredient's index
execute store result score @n[type=item_display,tag=prep_ingredient,tag=needs_ingredient,distance=..0.5] \
    prep_index run scoreboard players add @s prep_index 1

tag @n[type=item_display,tag=prep_ingredient,tag=needs_ingredient,distance=..0.5] remove needs_ingredient