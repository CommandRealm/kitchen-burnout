# Elytra sushi map
tp @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=15}] 2160 88 1988 180 -5
spawnpoint @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=15}] 2160 88 1988 180
#execute at @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=13}] run forceload add ~50 ~50 ~-150 ~-50

# Station placer
#summon minecraft:area_effect_cloud 1975 57 -21 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_50","y_20"]}


# Recipe set
scoreboard players set $food_type game 3