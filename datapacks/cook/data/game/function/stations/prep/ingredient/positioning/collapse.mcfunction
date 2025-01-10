# Called by a prep ingredient to move to its collapsed position based on its positioning ID
# Takes in the base Y position of the prep station
scoreboard players operation @s prep_position = @s prep_id
scoreboard players operation @s prep_position *= $7 number
# Add the base position to the ingredient's position
$scoreboard players add @s prep_position $(base_position)

# Apply the position to the ingredient
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s prep_position