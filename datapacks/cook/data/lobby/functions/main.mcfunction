##Runs whenever someone is in the lobby

##Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main
