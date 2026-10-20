# Called to add an ingredient (id) to the current recipe, list should be 1 for it to be listed in the sidebar.
# For repeat ingredients, $count recipe should be > 0.
$data modify storage game:serving/recipe ingredients append value "$(id)"

# Add the ingredient to the recipe list
# FIXME: Consolidate the stuff below this line with add_to_list.mcfunction, since it's basically the same thing but between sidebar and bossbar
$execute if score $1 number matches $(list) run function game:serving/recipes/add_to_list {id:"$(id)"}

# Add to the ingredient sidebar list
$execute if score $1 number matches $(list) unless score $count recipe matches 2.. run data modify storage game:serving/recipe ingredients_list \
    append value [{translate:"ingredient.$(id)",color:"yellow"}]
# Add with number of ingredients needed (e.g. x2)
# We use operation $count recipe > 1 to make sure that at least 1 is always needed
$execute if score $1 number matches $(list) if score $count recipe matches 2.. \
    store result storage game:serving/recipe count int 1 run scoreboard players operation $count recipe > $1 number
$execute if score $1 number matches $(list) if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe ingredients_list append value [ \
        {entity:"@n[tag=prep_station]", nbt:"data.ingredient_indices.$(id).prepared", plain:true}, \
        "/",{entity:"@n[tag=prep_station]", nbt:"data.ingredient_indices.$(id).needed", plain:true}," ",{translate:"ingredient.$(id)"}]

# Store the index of the ingredient in the ingredient list
$execute if score $1 number matches $(list) store result storage game:serving/recipe list_indices.$(id).index int 1 run scoreboard players add $list_index recipe 1
$execute if score $1 number matches $(list) store result storage game:serving/recipe list_indices.$(id).needed int 1 run scoreboard players operation $count recipe > $1 number
$execute if score $1 number matches $(list) run data modify storage game:serving/recipe list_indices.$(id).prepared set value 0

# Add the icon for the ingredient to the recipe icons
#$data modify storage game:serving/recipe icons append value {translate:"ingredient.$(id).icon"} (this was for when we wanted more than 1 icon for doubles)
# We only want to add the icon once per ingredient (we're showing that there's more than 1 with the text)
$execute if score $1 number matches $(list) run data modify storage game:serving/recipe icons append value {translate:"ingredient.$(id).icon"}


# Loop recursively until $count ingredient is 0
execute if score $count recipe matches 1.. run scoreboard players remove $count recipe 1
$execute if score $count recipe matches 1.. run function game:serving/recipes/add_ingredient {id:"$(id)",list:0}