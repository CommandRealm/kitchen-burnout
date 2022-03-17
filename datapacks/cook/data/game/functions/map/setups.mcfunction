execute if entity @a[gamemode=adventure,tag=playing,scores={map=1}] run function game:map/1/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=11}] run function game:map/11/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=14}] run function game:map/14/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=25}] run function game:map/25/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=26}] run function game:map/26/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=28}] run function game:map/28/setup
execute if entity @a[gamemode=adventure,tag=playing,scores={map=30}] run function game:map/30/setup

# Team 2 for versus mode
execute if entity @a[gamemode=adventure,tag=playing,scores={map=1},tag=team_2] run function game:map/1/setup_2