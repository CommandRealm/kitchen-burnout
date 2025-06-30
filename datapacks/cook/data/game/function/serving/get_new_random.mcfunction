# Temp (probably) function called by a prep station to get a new random recipe.
data modify storage game:serving/recipe ingredients set value []
data modify storage game:serving/recipe ingredients_list set value []
data modify storage game:serving/recipe title set value []
data modify storage game:serving/recipe subtitle set value []
data modify storage game:serving/recipe list_indices set value {}
scoreboard players set $list_index recipe 4
scoreboard players set $count recipe 0

# Generate a random recipe
# TODO: Call the correct category/tutorial generation function
function game:serving/recipes/category/burgers
data modify entity @s data.current_recipe set from storage game:serving/recipe ingredients
data modify entity @s data.ingredient_indices set value {}
data modify entity @s data.ingredient_indices set from storage game:serving/recipe list_indices

# Update the sidebar with the new recipe
function game:serving/update_sidebar