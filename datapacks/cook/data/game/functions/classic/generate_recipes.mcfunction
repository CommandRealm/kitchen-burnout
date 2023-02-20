# Called to generate the recipes for the default mode.


# Updating the bank
execute if score $recipe game matches 1 run function game:recipes/burgers
#execute if score $recipe game matches 2 run function game:recipes/soup
execute if score $recipe game matches 3 run function game:recipes/sushi
execute if score $recipe game matches 4 run function game:recipes/pizza
execute if score $recipe game matches 5 run function game:recipes/tacos
execute if score $recipe game matches 6 run function game:recipes/ice_cream

# Setting how many recipes should be generated
scoreboard players set $calculate calculate 75

data remove storage orders1 {}
data merge storage orders1 {Recipe:[]}
function game:classic/add_recipe