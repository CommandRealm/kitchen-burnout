execute positioned 2656 80 996 run kill @e[tag=ingredient_setup,distance=..500]
# Ingredients
execute positioned 2656 80 996 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2672 70 1024 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2640 70 1024 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2624 70 996 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2640 70 968 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2672 70 968 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2688 70 996 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}

# Cutting Boards
execute positioned 2663 75 1001 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2661 75 1003 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2651 75 1003 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2649 75 1001 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2649 75 991 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2651 75 989 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2661 75 989 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2663 75 991 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}

# Stovetops
execute positioned 2663 75 989 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2663 75 1003 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2649 75 1003 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2649 75 989 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}

# Prep
execute positioned 2656 74 996 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute positioned 2656 74 997 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}

# Customers
execute positioned 2656 73 995 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}

# Rotating Platforms based on direction
execute positioned 2656 64 972 run function game:map/18/platform_ne
execute positioned 2656 64 972 run function game:map/18/platform_nw
execute positioned 2656 64 972 run function game:map/18/platform_se
execute positioned 2656 64 972 run function game:map/18/platform_sw
execute positioned 2656 64 972 run function game:map/18/platform_n
execute positioned 2680 64 996 run function game:map/18/platform_e
execute positioned 2656 64 1020 run function game:map/18/platform_s
execute positioned 2632 64 996 run function game:map/18/platform_w
# Controller
summon marker 2656 64 996 {Tags:["die_between_games","platform_rotator"]}