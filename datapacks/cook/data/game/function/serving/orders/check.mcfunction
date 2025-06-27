# Called by a prep station to check if the order currently on it matches its current recipe.
data remove storage game:serving/orders recipe
data remove storage game:serving/orders order
data modify storage game:serving/orders recipe set from entity @s data.current_recipe
data modify storage game:serving/orders order set from entity @s data.ingredients
execute store result score $check serving run function game:serving/orders/recipe_check with storage game:serving/orders

# If a 1 was returned, the recipe is complete
execute if score $check serving matches 1 run function game:serving/orders/complete

# Otherwise, the recipe is not complete
execute unless score $check serving matches 1 run function game:serving/orders/incomplete