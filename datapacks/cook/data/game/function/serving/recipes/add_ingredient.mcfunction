# Called to add an ingredient (id) to the current recipe, list should be 1 for it to be listed in the sidebar.
# For repeat ingredients, $count recipe should be > 0.
$data modify storage game:serving/recipe ingredients append value "$(id)"

# TODO: Add to the ingredient sidebar list
$execute if score $1 number matches $(list) unless score $count recipe matches 2.. run data modify storage game:serving/recipe ingredients_list \
    append value [{"translate":"ingredient.$(id)","color":"yellow"},{"text":" ✕ ","color":"red"}]
$execute if score $1 number matches $(list) if score $count recipe matches 2.. \
    store result storage game:serving/recipe count int 1 run scoreboard players get $count recipe
$execute if score $1 number matches $(list) if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe ingredients_list append value [ \
        {"translate":"ingredient.$(id)","color":"yellow"},{"text":" x","color":"yellow"}, \
        {"storage":"game:serving/recipe","nbt":"count","color":"yellow"},{"text":" ✕","color":"red"}]

# Loop recursively until $count ingredient is 0
execute if score $count recipe matches 1.. run scoreboard players remove $count recipe 1
$execute if score $count recipe matches 1.. run function game:serving/recipes/add_ingredient {id:"$(id)",list:0}