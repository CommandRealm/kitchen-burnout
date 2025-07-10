# Called to generate a random burger recipe array for the tutorial kitchen.
# Bun (always)
function game:serving/recipes/add_ingredient {id:"bun", list:1}

# Patties
execute store result score $count recipe run random value 1..2
function game:serving/recipes/add_to_title_multiple {id:"hamburger"}
function game:serving/recipes/add_ingredient {id:"hamburger", list:1}

# Toppings
execute store result score $count recipe run random value 0..2
execute unless score $count recipe matches 0 run function game:serving/recipes/add_to_subtitle_multiple {id:"lettuce_leaf"}
execute unless score $count recipe matches 0 run function game:serving/recipes/add_ingredient {id:"lettuce_leaf", list:1}