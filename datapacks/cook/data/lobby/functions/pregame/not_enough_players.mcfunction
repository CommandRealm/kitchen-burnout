# called when there aren't enough players to start the game.
#title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] title [{"text":""}]
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] title [{"translate":"Not enough players.","color":"red"}]
execute store result score $total_players pregame if entity @a[gamemode=adventure]
execute if score $mode settings matches 1..2 if score $total_players pregame matches 1 run title @a subtitle [{"translate":"Try Co-op or Competitive mode to play by yourself","color":"gold"},{"text":"."}]
#execute if score $mode settings matches 1..2 if score $total_players pregame matches 1 run tellraw @a [{"text":"- ","color":"gray"},{"translate":"Try Co-op or Competitive mode to play by yourself","color":"gold"},{"text":".","color":"gold"}]
execute unless score $total_players pregame matches 1 unless score $ready_players_1 pregame matches 1.. if score $mode settings matches 1..2 run title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] subtitle [{"text":"- ","color":"gray"},{"translate":"Need a player on The Spoons.","color":"red"}]
execute unless score $total_players pregame matches 1 unless score $ready_players_2 pregame matches 1.. if score $mode settings matches 1..2 run title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure] subtitle [{"text":"- ","color":"gray"},{"translate":"Need a player on The Forks.","color":"red"}]