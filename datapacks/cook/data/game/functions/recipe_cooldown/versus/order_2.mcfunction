# Called to create a new recipe (for orders_2)

# Setting up minecraft:current_order_2
#data remove storage orders_2 Recipe[0]
data merge storage current_order_2 {Recipe:[]}
data modify storage current_order_2 Recipe set from storage orders_2 Recipe[0]

# Glowing Stuff
kill @e[type=marker,tag=recipe_ingredient,tag=2,tag=!tutorial]
kill @e[type=marker,tag=recipe_name,tag=2,tag=!tutorial]
tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,distance=..500,tag=!tutorial] remove recipe_ingredient
team join no_collision @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,distance=..500,tag=!tutorial]
tag @e[type=#game:fish,tag=can_catch,distance=..500,tag=!tutorial] remove recipe_ingredient
team join no_collision @e[type=#game:fish,tag=can_catch,distance=..500,tag=!tutorial]
function game:recipe_cooldown/versus/ingredient_summon_2
function game:stations/recipe_ingredient
# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,distance=..500]