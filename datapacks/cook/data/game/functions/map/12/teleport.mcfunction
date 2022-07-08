# Riptide fishing sushi map
tp @a[tag=playing,tag=!team_2,scores={map=12}] 1971 88 653 90 5
spawnpoint @a[tag=playing,tag=!team_2,scores={map=12}] 1971 88 653 90
execute at @a[tag=playing,tag=!team_2,scores={map=12}] run forceload add ~150 ~150 ~-150 ~-150

advancement revoke @a only game:player_hit_trident

# Station placer
#summon minecraft:area_effect_cloud 1975 57 -21 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_50","y_20"]}


# Recipe set
scoreboard players set $food_type game 3