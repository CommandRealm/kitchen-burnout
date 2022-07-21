# Taco Factory map
tp @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=8}] 1450 111 1002 -45 5
spawnpoint @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=8}] 1450 111 1002 -45
#execute at @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=8}] run forceload add ~50 ~70 ~-10 ~-10

# Station placer
#summon minecraft:area_effect_cloud 2958 64 1984 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_80","y_20"]}

# Recipe set
scoreboard players set $food_type game 5

# Setup function
#schedule function game:map/25/setup 5s