# Default burger map
tp @a[tag=playing,scores={map=1}] 991 62 505 225 5
execute at @a[tag=playing] run forceload add ~30 ~30 ~-30 ~-30

# Station placer
#summon minecraft:area_effect_cloud 987 60 494 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}


# Recipe set
scoreboard players set $recipe game 1