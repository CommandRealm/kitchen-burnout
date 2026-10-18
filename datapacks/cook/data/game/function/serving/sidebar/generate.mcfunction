# Called to update the sidebar with the current recipe and order information.
scoreboard objectives setdisplay sidebar sidebar
#scoreboard objectives modify sidebar numberformat styled {"font":"kb2:recipe_completion"}
scoreboard objectives modify sidebar numberformat blank

scoreboard players set $-4 sidebar 9999
scoreboard players set $-3 sidebar 999
scoreboard players set $-2 sidebar 99
scoreboard players set $-1 sidebar 9
scoreboard players reset $0 sidebar
scoreboard players reset $1 sidebar
scoreboard players reset $2 sidebar
scoreboard players reset $3 sidebar
scoreboard players reset $4 sidebar
scoreboard players reset $5 sidebar
scoreboard players reset $6 sidebar
scoreboard players reset $7 sidebar
scoreboard players reset $8 sidebar
scoreboard players reset $9 sidebar
scoreboard players reset $10 sidebar

# Kitchen
scoreboard players display name $-4 sidebar [{translate:"sidebar.header.kitchen",color:"green",font:"kb2:order_bold"}," ", \
    {translate:"kitchen.tutorial",font:"kb2:order",color:"gray"}]
# Order Title
scoreboard players display name $-3 sidebar [{translate:"sidebar.header.order",color:"green",font:"kb2:order_bold"}, \
    " ",{storage:"game:serving/recipe", nbt:"title[]", source:"storage", interpret:true, separator:" ",font:"kb2:order"}]
# Order subtitle
execute if data storage game:serving/recipe subtitle[0] run scoreboard players display name $-2 sidebar \
    [" ",{translate:"sidebar.order.subtitle_prefix",color:"green",font:"kb2:order_bold"}," ", \
    {storage:"game:serving/recipe", nbt:"subtitle[]", source:"storage", interpret:true, separator:{text:", ",font:"uniform"},font:"kb2:order"}]
execute unless data storage game:serving/recipe subtitle[0] run scoreboard players reset $-2 sidebar

# Recipe
scoreboard players display name $-1 sidebar [{text:"————————————",font:"kb2:order_bold",color:"white",bold:true}]
#scoreboard players display name $-1 sidebar [{"translate":"sidebar.header.recipe","color":"green","font":"kb2:order"}]
execute if data storage game:serving/recipe ingredients_list[0] run function game:serving/sidebar/update_line {index:0,done:false}
execute if data storage game:serving/recipe ingredients_list[1] run function game:serving/sidebar/update_line {index:1,done:false}
execute if data storage game:serving/recipe ingredients_list[2] run function game:serving/sidebar/update_line {index:2,done:false}
execute if data storage game:serving/recipe ingredients_list[3] run function game:serving/sidebar/update_line {index:3,done:false}
execute if data storage game:serving/recipe ingredients_list[4] run function game:serving/sidebar/update_line {index:4,done:false}
execute if data storage game:serving/recipe ingredients_list[5] run function game:serving/sidebar/update_line {index:5,done:false}
execute if data storage game:serving/recipe ingredients_list[6] run function game:serving/sidebar/update_line {index:6,done:false}
execute if data storage game:serving/recipe ingredients_list[7] run function game:serving/sidebar/update_line {index:7,done:false}
execute if data storage game:serving/recipe ingredients_list[8] run function game:serving/sidebar/update_line {index:8,done:false}
execute if data storage game:serving/recipe ingredients_list[9] run function game:serving/sidebar/update_line {index:9,done:false}
execute if data storage game:serving/recipe ingredients_list[10] run function game:serving/sidebar/update_line {index:10,done:false}