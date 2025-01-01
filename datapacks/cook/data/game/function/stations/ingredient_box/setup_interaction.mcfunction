#> NOT TO BE RUN DIRECTLY, takes in an ingredient id (id) and sets up the interaction for the ingredient box.
setblock ~ ~ ~ glass
data merge entity @s {width:1.001f,height:1.001f,response:true}
tag @s add ingredient_box
tag @s add reset_boxes
tag @s add die_between_games
tag @s add interactable
# Set ingredient
$function game:inventory/get_ingredient {slot:"",id:$(id)}

# Spinning item
$execute positioned ~ ~0.5 ~ summon item_display run function game:stations/ingredient_box/setup_item_display {id:$(id)}

data remove storage game:new_ingredient_box ingredient
data remove storage game:new_ingredient_box becomes