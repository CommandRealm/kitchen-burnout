#> NOT TO BE RUN DIRECTLY, takes in an ingredient id (id) and sets up the item display for the ingredient box.
tag @s add ingredient_box
tag @s add ingredient_box_display
tag @s add ingredient_box_outline
tag @s add die_between_games


# Set ingredient
$function game:inventory/get_ingredient {slot:"container.0",id:$(id)}

data merge entity @s {item_display:"fixed",Glowing:1b,brightness:{sky:15,block:15}}
# NEED TO SIMPLIFY SYSTEM: maybe execute store success on merging ingredient tag into recipe NBT and giving tag based on that?
#function game:stations/recipe_ingredient
team join recipe_missing @s[tag=recipe_ingredient]
team join no_collision @s[tag=!recipe_ingredient]