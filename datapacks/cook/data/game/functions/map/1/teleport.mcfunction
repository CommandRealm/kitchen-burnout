# Default burger map
tp @a[tag=playing,team=!2,scores={map=1}] 991 62 505 225 5
execute at @a[tag=playing,team=!2,scores={map=1}] run forceload add ~50 ~50 ~-50 ~-50

# Station placer
#summon minecraft:area_effect_cloud 987 60 494 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}


# Recipe set
scoreboard players set $recipe game 1