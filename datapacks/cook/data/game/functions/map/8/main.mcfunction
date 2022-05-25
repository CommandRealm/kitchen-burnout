scoreboard players add $timer arrow_cycle 1
execute if score $timer arrow_cycle matches 26.. if entity @a[gamemode=adventure,tag=playing,tag=!team_2,scores={map=8}] run function game:map/8/shoot
execute if score $timer arrow_cycle matches 26.. if entity @a[gamemode=adventure,tag=playing,tag=team_2,scores={map=8}] run function game:map/8/shoot_2
execute if score $timer arrow_cycle matches 26.. run scoreboard players set $timer arrow_cycle 0
execute as @a[gamemode=adventure,tag=playing,scores={map=8},advancements={game:arrow_hit_player=true}] at @s run function game:map/8/hit