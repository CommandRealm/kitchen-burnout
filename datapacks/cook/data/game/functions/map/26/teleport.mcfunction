# Slime jump sushi map
tp @a[tag=playing,tag=!team_2,scores={map=26}] 3496 72 0 90 3
execute at @a[tag=playing,tag=!team_2,scores={map=26}] run forceload add ~100 ~60 ~-10 ~-60

# Station placer
#summon minecraft:area_effect_cloud 3489 67 1991 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}
#summon minecraft:area_effect_cloud 3448 67 1958 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_20","y_10"]}


# Recipe set
scoreboard players set $recipe game 6