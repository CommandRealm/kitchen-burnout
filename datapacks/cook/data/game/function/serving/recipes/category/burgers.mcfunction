# Called to generate a random burger recipe array.
data remove storage game:serving/recipe ingredients
scoreboard players set $count recipe 0

# Bun (always)
function game:serving/recipes/add_ingredient {id:"bun"}

# Patties
execute store result score $burger_type recipe run random value 0..1
#execute store result score $burger_doneness recipe run random value 0..10
execute store result score $count recipe run random value 1..3
execute if score $burger_type recipe matches 0 run function game:serving/recipes/add_ingredient {id:"hamburger"}
execute if score $burger_type recipe matches 1 run function game:serving/recipes/add_ingredient {id:"smash_hamburger"}

# Toppings
execute store result score $cheese recipe run random value 0..1
execute store result score $lettuce_leaf recipe run random value 0..1
execute store result score $tomato_slice recipe run random value 0..1
execute if score $cheese recipe matches 1 run function game:serving/recipes/add_ingredient {id:"cheese"}
execute if score $lettuce_leaf recipe matches 1 run function game:serving/recipes/add_ingredient {id:"lettuce_leaf"}
execute if score $tomato_slice recipe matches 1 run function game:serving/recipes/add_ingredient {id:"tomato_slice"}