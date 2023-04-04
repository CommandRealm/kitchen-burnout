tag @s add ingredient_box_outline
tag @s add die_between_games
data merge entity @s {Glowing:1b,block_state:{Name:"minecraft:glass"}}
# NEED TO SIMPLIFY SYSTEM: maybe execute store success on merging ingredient tag into recipe NBT and giving tag based on that?
function game:stations/recipe_ingredient
team join recipe_missing @s[tag=ingredient_box_outline,tag=recipe_ingredient]
team join no_collision @s[tag=ingredient_box_outline,tag=!recipe_ingredient]