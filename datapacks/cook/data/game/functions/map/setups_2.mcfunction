# Team 2 for versus mode
execute if entity @a[gamemode=adventure,tag=playing,scores={map=1},tag=team_2] run function game:map/1/setup_2
execute if entity @a[gamemode=adventure,tag=playing,scores={map=2},tag=team_2] run function game:map/2/setup_2
execute if entity @a[gamemode=adventure,tag=playing,scores={map=14},tag=team_2] run function game:map/14/setup_2
execute if entity @a[gamemode=adventure,tag=playing,scores={map=25},tag=team_2] run function game:map/25/setup_2
execute if entity @a[gamemode=adventure,tag=playing,scores={map=26},tag=team_2] run function game:map/26/setup_2