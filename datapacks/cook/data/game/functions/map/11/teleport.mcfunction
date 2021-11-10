# Default sushi map
tp @a[tag=playing,scores={map=11}] 2023.0 62.0 -3.0 90 5
summon minecraft:area_effect_cloud 2000 63 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games"]}
execute at @a[tag=playing] run forceload add ~30 ~30 ~-30 ~-30


# Recipe set
scoreboard players set $recipe game 3