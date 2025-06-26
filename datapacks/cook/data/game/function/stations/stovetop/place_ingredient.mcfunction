# Called when a player places an ingredient on the stovetop

# Call the common place_ingredient function
function game:stations/place_ingredient

# Check if this placed ingredient is a cookable one, if so start the cooking process
data modify storage game:stations/cook input set from entity @s data.ingredient

# INITIAL COOKING TIMES
execute if data storage game:stations/cook {input:"raw_hamburger"} run return run function game:stations/stovetop/cook/start {start:1,transform_point:150,type:"hamburger"}
execute if data storage game:stations/cook {input:"half_cooked_hamburger"} run return run function game:stations/stovetop/cook/start {start:150,transform_point:300,type:"hamburger"}
execute if data storage game:stations/cook {input:"hamburger"} run return run function game:stations/stovetop/cook/start {start:300,transform_point:500,type:"hamburger"}
execute if data storage game:stations/cook {input:"burnt_hamburger"} run return run function game:stations/stovetop/cook/start {start:500,transform_point:800,type:"hamburger"}

execute if data storage game:stations/cook {input:"raw_beef"} run return run function game:stations/stovetop/cook/start {start:1,transform_point:200,type:"beef_taco"}
execute if data storage game:stations/cook {input:"beef_taco"} run return run function game:stations/stovetop/cook/start {start:200,transform_point:400,type:"beef_taco"}

execute if data storage game:stations/cook {input:"scorched_food"} run return 1

# For other ingredients, just place them on the stovetop and start a default cooking time
function game:stations/stovetop/cook/start {start:0,transform_point:200,type:"scorched_food"}
return 1