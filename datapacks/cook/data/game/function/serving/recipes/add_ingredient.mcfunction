# Called to add an ingredient (id) to the current recipe
# For repeat ingredients, $count ingredient should be > 0.
$data modify storage game:serving/recipe ingredients append value "$(id)"

# Loop recursively until $count ingredient is 0
execute if score $count recipe matches 1.. run scoreboard players remove $count recipe 1
$execute if score $count recipe matches 1.. run function game:serving/recipes/add_ingredient {id:"$(id)"}