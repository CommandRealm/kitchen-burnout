# Hitting player
execute as @a[distance=..1.75,gamemode=adventure,tag=playing] at @s run function game:map/25/burn
# Effects
execute if block ~ ~ ~ air run particle dust 1 .1 .1 0.6 ~ ~ ~ 0.05 0 0.05 1 5 force
execute unless block ~ ~ ~ air run playsound block.respawn_anchor.set_spawn master @a[distance=..15] ~ ~ ~ .7 1.5
execute unless block ~ ~ ~ air run particle dust_color_transition 1 .1 .1 .9 1 0.9 0.08 ^ ^ ^-.5 0.1 0.1 0.1 1 20 force
# Continue raycast
execute if block ~ ~ ~ air positioned ^ ^ ^0.25 run function game:map/25/lasers/spinning_raycast