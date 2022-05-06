# Called to generate the recipes for the default mode.


# Updating the bank
execute if score $food_type game matches 1 run function game:recipes/burgers
#execute if score $food_type game matches 2 run function game:recipes/soup
execute if score $food_type game matches 3 run function game:recipes/sushi
execute if score $food_type game matches 4 run function game:recipes/pizza
execute if score $food_type game matches 5 run function game:recipes/tacos
execute if score $food_type game matches 6 run function game:recipes/ice_cream

# Setting how many recipes should be generated
scoreboard players set $calculate calculate 75

data remove storage orders_1 {}
data merge storage orders_1 {Recipe:[]}
function game:mode_classic/add_recipe
data remove storage orders_2 {}
data modify storage orders_2 Recipe set from storage orders_1 Recipe