# Slime jump sushi map for team 2
tp @a[tag=playing,tag=team_2,scores={map=14}] 11965 70 1491 -90 5
spawnpoint @a[tag=playing,tag=team_2,scores={map=14}] 11965 70 1491 -90
execute at @a[tag=playing,tag=team_2,scores={map=14}] run forceload add ~100 ~100 ~-100 ~-100

# Station placer
#summon minecraft:area_effect_cloud 1963 53 1537 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_50","y_20"]}

#execute positioned 1965 53 1447 run function game:stations/ingredient_wasabi/create

# Recipe set
scoreboard players set $food_type game 3