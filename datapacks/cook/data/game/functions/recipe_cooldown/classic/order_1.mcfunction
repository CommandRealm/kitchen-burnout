# Called to create a new recipe (for orders_1)

# Setting up minecraft:current_order_1
#data remove storage orders_1 Recipe[0]
data merge storage minecraft:current_order_1 {Recipe:[]}
data modify storage minecraft:current_order_1 Recipe set from storage orders_1 Recipe[0]

# Glowing stuff
kill @e[type=marker,tag=recipe_ingredient,tag=!tutorial]
tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=!tutorial] remove recipe_ingredient
team join no_collision @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=!tutorial]
tag @e[type=#game:fish,tag=can_catch,tag=!tutorial] remove recipe_ingredient
team join no_collision @e[type=#game:fish,tag=can_catch,tag=!tutorial]
kill @e[type=marker,tag=recipe_name,tag=!tutorial]
function game:recipe_cooldown/classic/ingredient_summon
function game:stations/recipe_ingredient
# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,tag=!tutorial]