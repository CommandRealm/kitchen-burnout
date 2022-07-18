execute if score $game state matches 0 run function lobby:tutorial/game_main

# Give needed tag and remove old one
tag @e[tag=die_between_games,x=13,y=67,z=-3,distance=..20] add tutorial
tag @e[tag=die_between_games,tag=tutorial,x=13,y=67,z=-3,distance=..20] remove die_between_games