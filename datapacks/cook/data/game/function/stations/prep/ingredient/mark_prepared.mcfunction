# Called to mark an ingredient as prepared on the sidebar ingredient list
#> Takes in the index in the list, the ingredient id, current count prepared, and the amount needed.
$scoreboard players set $index serving $(index)
$scoreboard players set $needed serving $(needed)
$scoreboard players set $prepared serving $(prepared)

scoreboard players add $prepared serving 1

# ⨉
$execute if score $prepared serving matches 0 run scoreboard players set $$(index) sidebar 0
# ½
$execute if score $prepared serving matches 1.. if score $prepared serving < $needed serving run scoreboard players set $$(index) sidebar 2
# ✓
$execute if score $prepared serving >= $needed serving run scoreboard players set $$(index) sidebar 1

# Save the current count prepared
execute store result storage game:stations/prep prepared_ingredient.prepared int 1 run scoreboard players get $prepared serving
$data modify entity @s data.ingredient_indices.$(id) set from storage game:stations/prep prepared_ingredient
