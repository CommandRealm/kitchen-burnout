#> NOT TO BE RUN DIRECTLY, creates the item display for the ingredient box.
tag @s add ingredient_box
tag @s add ingredient_box_display
tag @s add ingredient_box_outline
tag @s add reset_between_games

data merge entity @s {item_display:"fixed",billboard:"vertical",Glowing:1b,brightness:{sky:15,block:15}}
# NEED TO SIMPLIFY SYSTEM: maybe execute store success on merging ingredient tag into recipe NBT and giving tag based on that?
#function game:stations/recipe_ingredient
team join recipe_missing @s[tag=recipe_ingredient]
team join no_collision @s[tag=!recipe_ingredient]