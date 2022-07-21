execute if block ~ ~ ~ white_glazed_terracotta run function game:stations/ingredient_rice/create
execute if block ~ ~ ~ green_glazed_terracotta run function game:stations/ingredient_avocado/create
execute if block ~ ~ ~ lime_glazed_terracotta run function game:stations/ingredient_wasabi/create

execute if block ~ ~ ~ orange_glazed_terracotta run function game:stations/salmon_spawner/create
execute if block ~ ~ ~ yellow_glazed_terracotta run function game:stations/pufferfish_spawner/create

execute if block ~ ~ ~ spruce_pressure_plate run function game:stations/cutting_board/create
execute if block ~ ~ ~ heavy_weighted_pressure_plate run function game:stations/stovetop/create

execute if block ~ ~ ~ oak_pressure_plate run function game:stations/prep/create
execute if block ~ ~ ~ jungle_pressure_plate run function game:stations/prep/create_2
execute if block ~ ~ ~ spruce_button run function game:stations/bell/create

execute if block ~ ~ ~ purpur_stairs run function game:stations/customer_line/create

kill @s[tag=ingredient_setup]