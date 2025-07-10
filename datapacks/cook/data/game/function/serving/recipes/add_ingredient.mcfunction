# Called to add an ingredient (id) to the current recipe, list should be 1 for it to be listed in the sidebar.
# For repeat ingredients, $count recipe should be > 0.
$data modify storage game:serving/recipe ingredients append value "$(id)"

# Add the ingredient to the recipe list
$execute if score $1 number matches $(list) run function game:serving/recipes/add_to_list {id:"$(id)"}

# Loop recursively until $count ingredient is 0
execute if score $count recipe matches 1.. run scoreboard players remove $count recipe 1
$execute if score $count recipe matches 1.. run function game:serving/recipes/add_ingredient {id:"$(id)",list:0}