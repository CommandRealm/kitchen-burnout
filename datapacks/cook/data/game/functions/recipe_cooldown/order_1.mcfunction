# Called to create a new recipe (for orders1)

# Setting up minecraft:current_order1
data remove storage orders1 Recipe[0]
data merge storage minecraft:current_order1 {Recipe:[]}
data modify storage minecraft:current_order1 Recipe set from storage orders1 Recipe[0]

