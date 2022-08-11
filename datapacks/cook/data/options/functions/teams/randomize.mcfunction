# Put all players on team 1 (will be removed for team 2 later)
tag @a add lobby_team_1
tag @a remove lobby_team_2
# Get players that need to go on each time
execute store result score $players ready if entity @a[gamemode=adventure,scores={ready=1..}]
scoreboard players operation $players ready /= $2 number
# Recursively add players to the second team as needed
execute if score $players ready matches 1.. as @a[gamemode=adventure,scores={ready=1..},tag=!lobby_team_2,limit=1,sort=random] at @s run function options:teams/join_2
# Tell those still on team 1 that they're on team 1
tellraw @a[gamemode=adventure,scores={ready=1..},tag=lobby_team_1,tag=!lobby_team_2] ["",{"text":"- ","color":"gray"},{"translate":"You're on the Spoons!","color":"blue"}]
# Show players on each team to all players
execute as @a[gamemode=adventure,scores={ready=1..}] run team join lobby @s
execute if entity @a[gamemode=adventure,scores={ready=1..},tag=lobby_team_1,tag=!lobby_team_2] run tellraw @a[gamemode=adventure] ["",{"text":"- ","color":"gray"},{"translate":"[SPOONS]","color":"blue","bold": true},{"text":" → ","color":"gray"},{"selector":"@a[gamemode=adventure,scores={ready=1..},tag=lobby_team_1,tag=!lobby_team_2]","color":"white"}]
execute if entity @a[gamemode=adventure,scores={ready=1..},tag=!lobby_team_1,tag=lobby_team_2] run tellraw @a[gamemode=adventure] ["",{"text":"- ","color":"gray"},{"translate":"[FORKS]","color":"red","bold": true},{"text":" → ","color":"gray"},{"selector":"@a[gamemode=adventure,scores={ready=1..},tag=!lobby_team_1,tag=lobby_team_2]","color":"white"}]
execute as @a[gamemode=adventure,scores={ready=1..}] at @s run function general:rank
# FX
particle totem_of_undying 8.5 67.5 37.1 0.1 0.1 0.1 0.5 5 force
playsound entity.player.levelup master @a 8 67 37 1 2
# Remove button
setblock 8 67 37 air
scoreboard players set $random_button pregame 10