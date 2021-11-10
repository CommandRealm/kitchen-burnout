# Default burger map
tp @a[tag=playing,scores={map=1}] 991 61 505 225 5
summon minecraft:area_effect_cloud 991 61 505 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games"]}
execute at @a[tag=playing] run forceload add ~30 ~30 ~-30 ~-30


# Recipe set
scoreboard players set $recipe game 1