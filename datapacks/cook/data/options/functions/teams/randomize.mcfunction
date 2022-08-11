tag @a add lobby_team_1
tag @a remove lobby_team_2
execute store result score $players ready if entity @a[gamemode=adventure,scores={ready=1..}]
scoreboard players operation $players ready /= $2 number
execute if score $players ready matches 1.. as @a[gamemode=adventure,scores={ready=1..},tag=!lobby_team_2,limit=1,sort=random] at @s run function options:teams/join_2