execute if block ~ ~ ~ yellow_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/cone
execute if block ~ ~ ~ cyan_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/bowl
execute if block ~ ~ ~ white_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/vanilla
execute if block ~ ~ ~ brown_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/chocolate
execute if block ~ ~ ~ pink_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/strawberry
execute if block ~ ~ ~ light_gray_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/cookies
execute if block ~ ~ ~ lime_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/mint
execute if block ~ ~ ~ orange_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/mango
execute if block ~ ~ ~ magenta_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/sprinkles
execute if block ~ ~ ~ black_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/chips
execute if block ~ ~ ~ red_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/cherry
execute if block ~ ~ ~ gray_glazed_terracotta unless entity @e[type=marker,tag=ingredient_box,distance=..0.1] run function game:stations/ingredient_box/cookie_dough

execute if block ~ ~ ~ spruce_pressure_plate unless entity @e[type=marker,tag=cutting_board,distance=..0.1] run function game:stations/cutting_board/create
execute if block ~ ~ ~ heavy_weighted_pressure_plate unless entity @e[type=marker,tag=stovetop,distance=..0.1] run function game:stations/stovetop/create

execute if block ~ ~ ~ oak_pressure_plate unless entity @e[type=marker,tag=prep_display,distance=..0.1] run function game:stations/prep/create
execute if block ~ ~ ~ jungle_pressure_plate unless entity @e[type=marker,tag=prep_display,distance=..0.1] run function game:stations/prep/create_2
execute if block ~ ~ ~ spruce_button unless entity @e[type=armor_stand,tag=bell,distance=..100] run function game:stations/bell/create

execute if block ~ ~ ~ purpur_stairs unless entity @e[type=marker,tag=customer_line,distance=..0.1] run function game:stations/customer_line/create

kill @s[tag=ingredient_setup]