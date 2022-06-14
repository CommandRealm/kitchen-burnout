# Runs whenever someone is in the lobby

# Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2.5 ~
effect give @e[type=slime,x=0,y=66,z=0,distance=..1000] invisibility 100 255 true