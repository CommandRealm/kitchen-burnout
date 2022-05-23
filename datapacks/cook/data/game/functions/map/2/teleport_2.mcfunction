# Simple Parkour burger map
tp @a[tag=playing,tag=team_2,scores={map=2}] 10993 68 6 150 -5
execute at @a[tag=playing,tag=team_2,scores={map=2}] run forceload add ~150 ~150 ~-150 ~-150

# Station placer
#summon minecraft:area_effect_cloud 987 60 494 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}


# Recipe set
scoreboard players set $food_type game 1