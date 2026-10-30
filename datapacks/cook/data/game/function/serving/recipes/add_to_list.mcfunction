# Called to add an ingredient (id) to the current recipe list

# Add the icon to the ingredient list in chat (has to be done first)
$data modify storage game:serving/recipe chat_ingredients_list \
    append value {"translate":"ingredient.$(id).icon",font:"kb2:ingredients",extra:[" "]}

## Add to the ingredient list in ingredients_list
$execute unless score $count recipe matches 2.. run data modify storage game:serving/recipe ingredients_list \
    append value [{"translate":"ingredient.$(id)"}]
$execute unless score $count recipe matches 2.. run data modify storage game:serving/recipe chat_ingredients_list[-1].extra \
    append value [{"translate":"ingredient.$(id)",font:"minecraft:default"}]
# Add with number of ingredients needed (e.g. x2)
# We use operation $count recipe > 1 to make sure that at least 1 is always needed
execute if score $count recipe matches 2.. \
    store result storage game:serving/recipe count int 1 run scoreboard players operation $count recipe > $1 number
$execute if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe ingredients_list append value [ \
        {entity:"@n[tag=prep_station]", nbt:"data.ingredient_indices.$(id).prepared", plain:true}, \
        "/",{entity:"@n[tag=prep_station]", nbt:"data.ingredient_indices.$(id).needed", plain:true}," ",{translate:"ingredient.$(id)"}]
$execute if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe chat_ingredients_list[-1].extra append value [ \
    {translate:"ingredient.$(id)",font:"minecraft:default"},{text:" x",font:"minecraft:default"}, \
        {storage:"game:serving/recipe",font:"minecraft:default",nbt:"count",plain:true}]
## Store the index of the ingredient in the ingredient list in list_indices
$execute store result storage game:serving/recipe list_indices.$(id).index int 1 run scoreboard players add $list_index recipe 1
$execute store result storage game:serving/recipe list_indices.$(id).needed int 1 run scoreboard players operation $count recipe > $1 number
$data modify storage game:serving/recipe list_indices.$(id).prepared set value 0

## Add the icon for the ingredient to the recipe icons
$data modify storage game:serving/recipe icons append value {translate:"ingredient.$(id).icon"}

# Add the icon for the ingredient and a negative space to the bossbar icons
$data modify storage game:serving/recipe bossbar_icons append value \
    {translate:"ingredient.$(id).icon",color:"white",extra:["-",{text:" ... m_,",color:"white"}]}
# Add the number of ingredients needed to the bossbar icon if there's more than 1 needed
$execute if score $count recipe matches 2.. run \
    data modify storage game:serving/recipe bossbar_icons[-1].extra[1] set value [{storage: "game:serving/recipe", nbt: "list_indices.$(id).needed", plain:true}, \
    {text:"..m_,"}]