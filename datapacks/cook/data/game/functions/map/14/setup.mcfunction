function game:map/14/teleport

tag @a[tag=!team_2] remove in_pipe
scoreboard players reset @a[tag=!team_2] in_pipe_time

# Parkour endings
execute positioned 1965 53 1447 run function game:map/ingredient_sets/sushi
execute positioned 1957 41 1494 run function game:map/ingredient_sets/sushi
execute positioned 1955 41 1494 run function game:map/ingredient_sets/sushi
execute positioned 1965 53 1539 run function game:map/ingredient_sets/sushi
# Rice
execute positioned 1969 71 1497 run function game:map/ingredient_sets/sushi
# Cutting boards
execute positioned 1966 71 1494 run function game:map/ingredient_sets/sushi
execute positioned 1968 71 1493 run function game:map/ingredient_sets/sushi
execute positioned 1971 71 1493 run function game:map/ingredient_sets/sushi
execute positioned 1973 71 1494 run function game:map/ingredient_sets/sushi
# Prep
execute positioned 1969 71 1489 run function game:map/ingredient_sets/sushi
execute positioned 1970 71 1489 run function game:map/ingredient_sets/sushi