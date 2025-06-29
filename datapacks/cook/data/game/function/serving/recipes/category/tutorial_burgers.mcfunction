# Called to generate a random burger recipe array for the tutorial kitchen.
data remove storage game:serving/recipe ingredients
scoreboard players set $count recipe 0

# Bun (always)
function game:serving/recipes/add_ingredient {id:"bun"}

# Patties
execute store result score $count recipe run random value 1..2
function game:serving/recipes/add_ingredient {id:"hamburger"}

# Toppings
execute store result score $count recipe run random value 0..2
function game:serving/recipes/add_ingredient {id:"lettuce_leaf"}