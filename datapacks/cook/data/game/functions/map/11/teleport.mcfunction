# Default sushi map
tp @a[tag=playing,scores={map=11}] 2023.0 63.0 -3.0 90 5
execute at @a[tag=playing,scores={map=11}] run forceload add ~50 ~50 ~-50 ~-50

# Station placer
summon minecraft:area_effect_cloud 1975 57 -21 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_50","y_20"]}


# Recipe set
scoreboard players set $recipe game 3