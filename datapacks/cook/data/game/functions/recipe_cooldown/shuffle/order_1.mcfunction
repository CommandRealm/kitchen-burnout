# Called to create a new recipe (for orders_1)

# Setting up minecraft:current_order_1
#data remove storage orders_1 Recipe[0]
data merge storage current_order_1 {Recipe:[]}
data modify storage current_order_1 Recipe set from storage orders_1 Recipe[0]

# Glowing stuff
kill @e[type=marker,tag=recipe_ingredient,tag=!2]
kill @e[type=marker,tag=recipe_name,tag=!2]
tag @e[type=magma_cube,tag=ingredient_box_outline,distance=..500] remove recipe_ingredient
team join no_collision @e[type=magma_cube,tag=ingredient_box_outline,distance=..500]
tag @e[type=#game:fish,tag=can_catch,distance=..500] remove recipe_ingredient
team join no_collision @e[type=#game:fish,tag=can_catch,distance=..500]
tag @e[type=glow_item_frame,tag=archery_ingredient,distance=..500] remove recipe_ingredient
team join no_collision @e[type=glow_item_frame,tag=archery_ingredient,distance=..500]
function game:recipe_cooldown/shuffle/ingredient_summon_1
# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,distance=..500]