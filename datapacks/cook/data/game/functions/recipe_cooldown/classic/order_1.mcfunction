# Called to create a new recipe (for orders1)

# Setting up minecraft:current_order1
data remove storage orders1 Recipe[0]
data merge storage minecraft:current_order1 {Recipe:[]}
data modify storage minecraft:current_order1 Recipe set from storage orders1 Recipe[0]

kill @e[type=marker,tag=recipe_ingredient]
kill @e[type=marker,tag=recipe_name]
function game:recipe_cooldown/classic/ingredient_summon
# Add ingredient markers to missing team
team join recipe_missing @e[type=marker,tag=recipe_ingredient]