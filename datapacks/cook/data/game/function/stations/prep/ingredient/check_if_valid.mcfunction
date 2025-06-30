# Called to check if the held ingredient is valid for the current recipe
# Returns 1 if the ingredient is valid, 0 otherwise
#> Takes in the current recipe and ingredients list with the new ingredient added
# If the ingredient is not in the current recipe, fail
$execute unless data storage game:stations/prep/check {recipe:["$(id)"]} run return fail
# If the ingredient already has been prepared (at the required quantity), fail
$execute store result score $needed serving run data get entity @s data.ingredient_indices.$(id).needed
$execute store result score $prepared serving run data get entity @s data.ingredient_indices.$(id).prepared
execute if score $prepared serving >= $needed serving run return fail

# Otherwise, the ingredient is valid
return 1