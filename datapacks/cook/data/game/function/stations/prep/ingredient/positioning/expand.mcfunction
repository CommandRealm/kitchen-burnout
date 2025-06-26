# Called by a prep ingredient to move to its expanded position based on its positioning ID
# Takes in the base Y position of the prep station
scoreboard players operation @s prep_position = @s prep_id
execute store result entity @s teleport_duration int 2 run scoreboard players get @s prep_position
scoreboard players operation @s prep_position *= $20 number
# Add the base position to the ingredient's position
$scoreboard players add @s prep_position $(base_position)

# Apply the position to the ingredient
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s prep_position

# Create an interaction at our new position
data modify storage game:stations/prep interaction_y set from entity @s Pos[1]
data modify storage game:stations/prep ingredient_id set from entity @s data.ingredient
execute store result storage game:stations/prep index int 1 run scoreboard players get @s prep_index
function game:stations/prep/ingredient/create_interaction with storage game:stations/prep