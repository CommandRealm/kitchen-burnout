# Called by a specific ingredient box's creation function to create a new ingredient box
# USES:
#   [score] $new_box ingredient - for the ingredient ID
#   [storage] game:new_ingredient_box ingredient - for the ingredient tag/name
#   [score] $glowing settings - to determine if it should glow (maybe remove this setting?)
setblock ~ ~ ~ glass
data merge entity @s {width:1.001f,height:1.001f}
tag @s add ingredient_box
tag @s add reset_boxes
tag @s add die_between_games
tag @s add clickable
scoreboard players operation @s ingredient = $new_box ingredient
data modify entity @s Tags append from storage game:new_ingredient_box ingredient
#execute if score $glowing settings matches 1 positioned ~-0.5 ~ ~-0.5 summon block_display run function game:stations/ingredient_box/_init_glow
# Spinning item
execute positioned ~ ~0.5 ~ summon item_display run function game:stations/ingredient_box/_init_display