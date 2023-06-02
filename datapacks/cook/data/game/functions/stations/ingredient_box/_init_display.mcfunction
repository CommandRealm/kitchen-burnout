# For setting up a new ingredient box's item display
tag @s add ingredient_box_display
tag @s add ingredient_box_outline
tag @s add die_between_games
data modify entity @s Tags append from storage game:new_ingredient_box ingredient
data merge entity @s {item_display:"fixed",Glowing:1b,brightness:{sky:15,block:15}}
item replace entity @s container.0 from block 0 -60 0 container.0
# NEED TO SIMPLIFY SYSTEM: maybe execute store success on merging ingredient tag into recipe NBT and giving tag based on that?
function game:stations/recipe_ingredient
team join recipe_missing @s[tag=ingredient_box_outline,tag=recipe_ingredient]
team join no_collision @s[tag=ingredient_box_outline,tag=!recipe_ingredient]