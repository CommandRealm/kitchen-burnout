function game:map/8/teleport

advancement revoke @a only game:arrow_hit_player
scoreboard players set $timer arrow_cycle 0

# Hallway ingredients
execute positioned 1470 111 1026 run function game:map/ingredient_sets/tacos
execute positioned 1457 110 1028 run function game:map/ingredient_sets/tacos
execute positioned 1456 111 1030 run function game:map/ingredient_sets/tacos
execute positioned 1455 112 1027 run function game:map/ingredient_sets/tacos
# Kitchen ingredients
execute positioned 1453 111 1001 run function game:map/ingredient_sets/tacos
execute positioned 1454 111 1005 run function game:map/ingredient_sets/tacos
execute positioned 1450 111 1008 run function game:map/ingredient_sets/tacos
# Stations
execute positioned 1449 111 1005 run function game:map/ingredient_sets/tacos
execute positioned 1449 111 1004 run function game:map/ingredient_sets/tacos
execute positioned 1451 111 1001 run function game:map/ingredient_sets/tacos
execute positioned 1453 111 1004 run function game:map/ingredient_sets/tacos
# Prep
execute positioned 1464 111 1009 run function game:map/ingredient_sets/tacos
execute positioned 1465 111 1010 run function game:map/ingredient_sets/tacos