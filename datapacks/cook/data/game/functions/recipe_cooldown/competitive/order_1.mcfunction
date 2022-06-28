# Called to create a new recipe (for orders_1)

# Setting up minecraft:current_order_1
#data remove storage orders_1 Recipe[0]
data merge storage minecraft:current_order_1 {Recipe:[]}
data modify storage minecraft:current_order_1 Recipe set from storage orders_1 Recipe[0]

# Glowing stuff
kill @e[type=marker,tag=recipe_ingredient]
kill @e[type=marker,tag=recipe_name]
tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline] remove recipe_ingredient
team join no_collision @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline]
tag @e[type=#game:fish,tag=can_catch] remove recipe_ingredient
team join no_collision @e[type=#game:fish,tag=can_catch]
function game:recipe_cooldown/competitive/ingredient_summon
# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient]