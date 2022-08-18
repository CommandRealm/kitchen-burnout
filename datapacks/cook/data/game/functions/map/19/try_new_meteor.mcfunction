# Try to spawn a new meteor based on the team to get around the random issues
execute if entity @a[gamemode=adventure,tag=playing,scores={map=19},tag=!team_2] run function game:map/19/new_meteor
execute if entity @a[gamemode=adventure,tag=playing,scores={map=19},tag=team_2] run function game:map/19/new_meteor_2