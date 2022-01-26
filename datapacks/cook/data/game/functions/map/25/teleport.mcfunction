# Taco Factory map
tp @a[tag=playing,scores={map=25}] 2963 70 1996 -90 5
execute at @a[tag=playing] run forceload add ~80 ~80 ~-80 ~-80

# Station placer
summon minecraft:area_effect_cloud 2958 64 1984 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_80","y_20"]}

# Recipe set
scoreboard players set $recipe game 5

# Setup function
schedule function game:map/25/setup 5s