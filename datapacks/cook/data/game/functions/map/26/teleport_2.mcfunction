# Ice bridges kitchen for team 2
tp @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=26}] 13496 72 0 90 3
spawnpoint @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=26}] 13496 72 0 90
execute at @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=26}] run forceload add ~100 ~100 ~-100 ~-100

# Station placer
#summon minecraft:area_effect_cloud 3489 67 1991 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}
#summon minecraft:area_effect_cloud 3448 67 1958 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_20","y_10"]}


# Recipe set
scoreboard players set $food_type game 6