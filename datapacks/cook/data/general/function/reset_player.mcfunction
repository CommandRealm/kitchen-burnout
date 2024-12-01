# Take to spawn
tp @s -11.0 68 46.0 -148 -18
spawnpoint @s -11 68 46 -148

# Remove tags
tag @s remove playing

# Others
clear @s
gamemode adventure @s
title @s times 0 25 5
effect clear @s
xp set @s 0 levels
xp set @s 0 points

# Effects
effect give @s instant_health 1 5 true
effect give @s saturation infinite 127 true