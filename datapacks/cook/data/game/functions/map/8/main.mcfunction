scoreboard players add $timer arrow_cycle 1
execute if score $timer arrow_cycle matches 26.. run function game:map/8/shoot
execute as @a[gamemode=adventure,tag=playing,scores={map=8},advancements={game:arrow_hit_player=true}] at @s run function game:map/8/hit