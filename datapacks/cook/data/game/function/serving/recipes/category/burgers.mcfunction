# Called to generate a random burger recipe array.
# Bun (always)
function game:serving/recipes/add_ingredient {id:"bun", list:1}

# Cheese (checked first because it's needed for the naming scheme)
execute store result score $cheese recipe run random value 0..1

# Patties
execute store result score $burger_type recipe run random value 0..1
#execute store result score $burger_doneness recipe run random value 0..10
execute store result score $count recipe run random value 1..3
execute if score $burger_type recipe matches 0 if score $cheese recipe matches 0 run \
    function game:serving/recipes/add_to_title_multiple {id:"hamburger"}
execute if score $burger_type recipe matches 0 if score $cheese recipe matches 1 run \
    function game:serving/recipes/add_to_title_multiple {id:"hamburger.cheese"}
execute if score $burger_type recipe matches 1 if score $cheese recipe matches 0 run \
    function game:serving/recipes/add_to_title_multiple {id:"smashed_hamburger"}
execute if score $burger_type recipe matches 1 if score $cheese recipe matches 1 run \
    function game:serving/recipes/add_to_title_multiple {id:"smashed_hamburger.cheese"}
execute if score $burger_type recipe matches 0 run function game:serving/recipes/add_ingredient {id:"hamburger", list:1}
execute if score $burger_type recipe matches 1 run function game:serving/recipes/add_ingredient {id:"smashed_hamburger", list:1}

# Toppings
execute store result score $lettuce_leaf recipe run random value 0..1
execute store result score $tomato_slice recipe run random value 0..1
execute if score $lettuce_leaf recipe matches 1 run function game:serving/recipes/add_to_subtitle {id:"lettuce_leaf", count:1}
execute if score $tomato_slice recipe matches 1 run function game:serving/recipes/add_to_subtitle {id:"tomato_slice", count:1}

execute if score $cheese recipe matches 1 run function game:serving/recipes/add_ingredient {id:"cheese", list:1}
execute if score $lettuce_leaf recipe matches 1 run function game:serving/recipes/add_ingredient {id:"lettuce_leaf", list:1}
execute if score $tomato_slice recipe matches 1 run function game:serving/recipes/add_ingredient {id:"tomato_slice", list:1}