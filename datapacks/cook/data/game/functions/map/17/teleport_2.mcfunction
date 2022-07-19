# Honey Wall Burger Kitchen for team 2
tp @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=17}] 12503.0 67 521.0 90 2
spawnpoint @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=17}] 12503 67 521 90
execute at @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=17}] run forceload add ~50 ~50 ~-50 ~-50

# Station placer
#summon minecraft:area_effect_cloud 987 60 494 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}


# Recipe set
scoreboard players set $food_type game 1