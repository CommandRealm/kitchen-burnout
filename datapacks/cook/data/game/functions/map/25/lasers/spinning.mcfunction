# Spinning
tp @s ~ ~ ~ ~-3 0
playsound block.beacon.ambient master @a[distance=..10] ~ ~ ~ .8 2
execute positioned ~ ~.5 ~ run particle dust 1 .1 .1 0.7 ^ ^ ^.8 0.2 0.1 0.2 1 30
execute positioned ~ ~.5 ~ positioned ^ ^ ^1.4 run function game:map/25/lasers/spinning_raycast