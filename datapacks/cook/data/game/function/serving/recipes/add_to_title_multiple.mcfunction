# Called to add an ingredient's (id) display name to the current recipe's title when there are multiple of the same ingredient.
# $count recipe should be set to the number of ingredients to add.
$data modify storage game:serving/name id set value "$(id)"
execute store result storage game:serving/name count int 1 run scoreboard players operation $count recipe > $1 number
# Ends up calling with "id.count" so for example, 2 burgers will be "ingredient.hamburger.2"
function game:serving/recipes/add_to_title with storage game:serving/name