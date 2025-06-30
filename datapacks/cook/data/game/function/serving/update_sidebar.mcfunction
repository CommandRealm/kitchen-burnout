# Called to update the sidebar with the current recipe and order information.
scoreboard objectives setdisplay sidebar sidebar

scoreboard players set $1 sidebar 9999
scoreboard players set $2 sidebar 999
scoreboard players set $3 sidebar 99
scoreboard players set $4 sidebar 9
scoreboard players set $5 sidebar 0
scoreboard players set $6 sidebar 0
scoreboard players set $7 sidebar 0
scoreboard players set $8 sidebar 0
scoreboard players set $9 sidebar 0
scoreboard players set $10 sidebar 0
scoreboard players set $11 sidebar 0
scoreboard players set $12 sidebar 0
scoreboard players set $13 sidebar 0
scoreboard players set $14 sidebar 0
scoreboard players set $15 sidebar 0

# Kitchen
scoreboard players display name $1 sidebar [{"text":"◆ ","color":"gray","font":"uniform"},{"translate":"sidebar.header.kitchen","color":"green","bold":true,"underlined":true}," ",{"translate":"kitchen.tutorial","color":"yellow","bold":true,"italic":true}]
# Order Title
scoreboard players display name $2 sidebar [{"text":"◆ ","color":"gray","font":"uniform"}, \
    {"translate":"sidebar.header.order","color":"green","bold":true,"underlined":true}, \
    " ",{storage:"game:serving/recipe", nbt:"title[]", source:"storage", interpret:true, separator:" "}]
# Order subtitle
execute if data storage game:serving/recipe subtitle[0] run scoreboard players display name $3 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{"translate":"sidebar.order.subtitle_prefix","color":"yellow"}," ", \
    {storage:"game:serving/recipe", nbt:"subtitle[]", source:"storage", interpret:true, separator:{"text":", ",font:"uniform"}}]
execute unless data storage game:serving/recipe subtitle[0] run scoreboard players reset $3 sidebar

# Recipe
scoreboard players display name $4 sidebar [{"text":"◆ ","color":"gray","font":"uniform"},{"translate":"sidebar.header.recipe","color":"green","bold":true,"underlined":true}]
execute if data storage game:serving/recipe ingredients_list[0] run scoreboard players display name $5 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[0]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[1] run scoreboard players display name $6 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[1]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[2] run scoreboard players display name $7 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[2]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[3] run scoreboard players display name $8 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[3]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[4] run scoreboard players display name $9 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[4]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[5] run scoreboard players display name $10 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[5]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[6] run scoreboard players display name $11 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[6]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[7] run scoreboard players display name $12 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[7]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[8] run scoreboard players display name $13 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[8]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[9] run scoreboard players display name $14 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[9]", source:"storage",interpret:true}]
execute if data storage game:serving/recipe ingredients_list[10] run scoreboard players display name $15 sidebar \
    [{"text":" ‣ ","color":"gray","font":"uniform"},{storage:"game:serving/recipe", nbt:"ingredients_list[10]", source:"storage",interpret:true}]

# Hiding the empty/unused lines
execute unless data storage game:serving/recipe ingredients_list[0] run scoreboard players reset $5 sidebar
execute unless data storage game:serving/recipe ingredients_list[1] run scoreboard players reset $6 sidebar
execute unless data storage game:serving/recipe ingredients_list[2] run scoreboard players reset $7 sidebar
execute unless data storage game:serving/recipe ingredients_list[3] run scoreboard players reset $8 sidebar
execute unless data storage game:serving/recipe ingredients_list[4] run scoreboard players reset $9 sidebar
execute unless data storage game:serving/recipe ingredients_list[5] run scoreboard players reset $10 sidebar
execute unless data storage game:serving/recipe ingredients_list[6] run scoreboard players reset $11 sidebar
execute unless data storage game:serving/recipe ingredients_list[7] run scoreboard players reset $12 sidebar
execute unless data storage game:serving/recipe ingredients_list[8] run scoreboard players reset $13 sidebar
execute unless data storage game:serving/recipe ingredients_list[9] run scoreboard players reset $14 sidebar
execute unless data storage game:serving/recipe ingredients_list[10] run scoreboard players reset $15 sidebar