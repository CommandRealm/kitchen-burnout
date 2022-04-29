function game:map/14/teleport_2

tag @a[tag=team_2] remove in_pipe
scoreboard players reset @a[tag=team_2] in_pipe_time

# Parkour endings
execute positioned 11965 53 1447 run function game:map/ingredient_sets/sushi
execute positioned 11957 41 1494 run function game:map/ingredient_sets/sushi
execute positioned 11955 41 1494 run function game:map/ingredient_sets/sushi
execute positioned 11965 53 1539 run function game:map/ingredient_sets/sushi
# Rice
execute positioned 11969 71 1497 run function game:map/ingredient_sets/sushi
# Cutting boards
execute positioned 11966 71 1494 run function game:map/ingredient_sets/sushi
execute positioned 11968 71 1493 run function game:map/ingredient_sets/sushi
execute positioned 11971 71 1493 run function game:map/ingredient_sets/sushi
execute positioned 11973 71 1494 run function game:map/ingredient_sets/sushi
# Prep
execute positioned 11969 71 1489 run function game:map/ingredient_sets/sushi
execute positioned 11970 71 1489 run function game:map/ingredient_sets/sushi