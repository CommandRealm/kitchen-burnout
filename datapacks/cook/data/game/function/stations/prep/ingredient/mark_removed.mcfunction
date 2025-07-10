# Called to mark an ingredient as removed/unprepared on the sidebar ingredient list
#> Takes in the index in the list, the ingredient id, current count prepared, and the amount needed.
$scoreboard players set $index serving $(index)
$scoreboard players set $needed serving $(needed)
$scoreboard players set $prepared serving $(prepared)

scoreboard players remove $prepared serving 1

$scoreboard players set $required serving $(needed)
$scoreboard players remove $required serving $(prepared)
scoreboard players add $required serving 1
execute store result storage game:stations/prep removed_ingredient.required int 1 run scoreboard players get $required serving


## Update the bossbar with the current order icons
# Still need more of this ingredient
$execute if score $required serving matches 2.. run \
    data modify entity @s data.recipe_icons[$(index)].extra[1].text set string \
        storage game:stations/prep removed_ingredient.required
# Only one more of this ingredient needed
$execute if score $required serving matches 1 run \
    data modify entity @s data.recipe_icons[$(index)].extra[1].text set value "+."

# No more needed for this ingredient (cute little checkmark)
$execute if score $required serving matches ..0 run \
    data modify entity @s data.recipe_icons[$(index)].extra[1].text set value "0"

function game:serving/update_order_bossbar

## ALL THIS STUFF NEEDS INDEX TO BE 5-INDEXED TO WORK (because the 5th line is the first one for the ingredients)
# ⨉
#$execute if score $prepared serving matches 0 run scoreboard players set $$(index) sidebar 0
# ½
#$execute if score $prepared serving matches 1.. if score $prepared serving < $needed serving run scoreboard players set $$(index) sidebar 2
# ✓
#$execute if score $prepared serving >= $needed serving run scoreboard players set $$(index) sidebar 1

# Save the current count prepared
execute store result storage game:stations/prep removed_ingredient.prepared int 1 run scoreboard players get $prepared serving
$data modify entity @s data.ingredient_indices.$(id) set from storage game:stations/prep removed_ingredient
