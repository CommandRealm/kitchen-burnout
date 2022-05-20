# Sliding platforms taco map
tp @a[tag=playing,tag=!team_2,scores={map=22}] 3186 90 499 90 5
execute at @a[tag=playing,tag=!team_2,scores={map=22}] run forceload add ~180 ~180 ~-180 ~-180

# Station placer
#summon minecraft:area_effect_cloud 2958 64 1984 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_80","y_20"]}

# Recipe set
scoreboard players set $food_type game 5