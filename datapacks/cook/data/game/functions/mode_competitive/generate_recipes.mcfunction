# Called to generate the recipes for the competitive mode.


# Updating the bank
execute if score $food_type game matches 1 run function game:recipes/burgers
#execute if score $food_type game matches 2 run function game:recipes/soup
execute if score $food_type game matches 3 run function game:recipes/sushi
execute if score $food_type game matches 4 run function game:recipes/pizza
execute if score $food_type game matches 5 run function game:recipes/tacos
execute if score $food_type game matches 6 run function game:recipes/ice_cream

data remove storage orders_1 {}
data merge storage orders_1 {Recipe:[]}
function game:mode_competitive/pick_recipes

scoreboard players set $finished_recipes game 1
scoreboard players set $winner shuffle 0