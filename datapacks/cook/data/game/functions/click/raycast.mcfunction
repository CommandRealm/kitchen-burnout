##Raycast
scoreboard players remove $calculate calculate 1
execute if entity @e[tag=raycast_target,limit=1,distance=..1] run function game:click/hit
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.1 run function game:click/raycast