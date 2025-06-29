# Temp (probably) function called by a prep station to get a new random recipe.
data modify storage game:serving/recipe ingredients set value []
data modify storage game:serving/recipe ingredients_list set value []
data modify storage game:serving/recipe title set value []
data modify storage game:serving/recipe subtitle set value []
scoreboard players set $count recipe 0
scoreboard players display name * sidebar ""

# Generate a random recipe
# TODO: Call the correct category/tutorial generation function
function game:serving/recipes/category/tutorial_burgers
data modify entity @s data.current_recipe set from storage game:serving/recipe ingredients

## Update sidebar
scoreboard objectives setdisplay sidebar sidebar

# Kitchen
scoreboard players display name $1 sidebar [{"text":"- ","color":"gray"},{"translate":"sidebar.header.kitchen","color":"green","bold":true}," ",{"translate":"kitchen.tutorial","color":"yellow","bold":false,"italic":true}]
scoreboard players display name $2 sidebar {"text":"-------------------------","color":"dark_gray"}

# Order
scoreboard players display name $3 sidebar [{"text":"- ","color":"gray"},{"translate":"sidebar.header.order","color":"green","bold":true}]
execute if data storage game:serving/recipe title[0] run scoreboard players display name $4 sidebar \
    [{"text":" ", "color":"yellow"}, {storage:"game:serving/recipe", nbt:"title[]", source:"storage", interpret:true, separator:" "}]
execute if data storage game:serving/recipe subtitle[0] run scoreboard players display name $5 sidebar \
    [{"translate":"sidebar.order.subtitle","color":"yellow"},{storage:"game:serving/recipe", nbt:"subtitle[]", source:"storage", interpret:true, separator:", "}]

# Recipe
scoreboard players display name $6 sidebar [{"text":"- ","color":"gray"},{"translate":"sidebar.header.recipe","color":"green","bold":true}]
execute if data storage game:serving/recipe ingredients_list[0] run scoreboard players display name $7 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[0]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[1] run scoreboard players display name $8 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[1]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[2] run scoreboard players display name $9 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[2]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[3] run scoreboard players display name $10 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[3]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[4] run scoreboard players display name $11 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[4]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[5] run scoreboard players display name $12 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[5]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[6] run scoreboard players display name $13 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[6]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[7] run scoreboard players display name $14 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[7]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[8] run scoreboard players display name $15 sidebar \
    [{"text":" • ","color":"gray"},{storage:"game:serving/recipe", nbt:"ingredients_list[8]", source:"storage",interpret:true}]