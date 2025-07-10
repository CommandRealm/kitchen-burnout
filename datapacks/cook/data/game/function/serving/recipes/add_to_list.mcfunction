# Called to add an ingredient (id) to the current recipe list

## Add to the ingredient list in ingredients_list
$execute unless score $count recipe matches 2.. run data modify storage game:serving/recipe ingredients_list \
    append value [{"translate":"ingredient.$(id)"}]
# Add with number of ingredients needed (e.g. x2)
# We use operation $count recipe > 1 to make sure that at least 1 is always needed
execute if score $count recipe matches 2.. \
    store result storage game:serving/recipe count int 1 run scoreboard players operation $count recipe > $1 number
$execute if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe ingredients_list append value [ \
        {"translate":"ingredient.$(id)"},{"text":" x"}, \
        {"storage":"game:serving/recipe","nbt":"count"}]

## Store the index of the ingredient in the ingredient list in list_indices
$execute store result storage game:serving/recipe list_indices.$(id).index int 1 run scoreboard players add $list_index recipe 1
$execute store result storage game:serving/recipe list_indices.$(id).needed int 1 run scoreboard players operation $count recipe > $1 number
$execute run data modify storage game:serving/recipe list_indices.$(id).prepared set value 0

## Add the icon for the ingredient to the recipe icons
# Add the icon for the ingredient and a negative space to the recipe icons
$execute run data modify storage game:serving/recipe icons append value \
    {translate:"ingredient.$(id).icon",extra:["-",{text:"+.",color:"white"}]}
# Add the number of ingredients needed to the recipe icon if there's more than 1 needed
$execute if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe icons[-1].extra[1].text set string storage game:serving/recipe list_indices.$(id).needed

# Add the icon to the ingredient list
data modify storage game:serving/recipe ingredients_list[-1] prepend value \
    {translate:"",extra:[{translate:" ",color:"white",font:"kitchen_burnout:small_ingredients"}, " "]}
data modify storage game:serving/recipe ingredients_list[-1][0].extra[0].translate set from storage game:serving/recipe icons[-1].translate