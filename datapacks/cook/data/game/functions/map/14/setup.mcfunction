function game:map/14/teleport

tag @a[tag=!team_2] remove in_pipe
scoreboard players reset @a[tag=!team_2] in_pipe_time

function game:map/14/ingredient_setup