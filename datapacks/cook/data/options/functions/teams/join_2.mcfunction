tag @s add lobby_team_2
tag @s remove lobby_team_1
scoreboard players remove $players ready 1
execute if score $players ready matches 1.. as @a[gamemode=adventure,scores={ready=1..},tag=!lobby_team_2,limit=1,sort=random] at @s run function options:teams/join_2