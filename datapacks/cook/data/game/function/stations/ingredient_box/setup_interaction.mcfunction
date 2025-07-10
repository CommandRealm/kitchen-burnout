#> NOT TO BE RUN DIRECTLY, takes in an ingredient id (id) and sets up the interaction for the ingredient box.
setblock ~ ~ ~ glass
data merge entity @s {width:1.001f,height:1.001f,response:true}
tag @s add ingredient_box
tag @s add reset_boxes
tag @s add reset_between_games
tag @s add interactable

# Spinning item
execute positioned ~ ~0.5 ~ summon item_display run function game:stations/ingredient_box/setup_item_display

# Set ingredient
$execute positioned ~ ~0.5 ~ run function game:inventory/get_ingredient { \
    entity:"@n[type=item_display,tag=ingredient_box,distance=..0.5]", slot:"container.0", id: $(id)}

data remove storage game:stations/box/new ingredient
data remove storage game:stations/box/new becomes