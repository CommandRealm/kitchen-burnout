# Set limits
scoreboard players set @s[tag=x_30,tag=!scores_set] max_placer_x 30
scoreboard players set @s[tag=x_40,tag=!scores_set] max_placer_x 40
scoreboard players set @s[tag=x_50,tag=!scores_set] max_placer_x 50
scoreboard players set @s[tag=x_60,tag=!scores_set] max_placer_x 60
scoreboard players set @s[tag=x_70,tag=!scores_set] max_placer_x 70
scoreboard players set @s[tag=x_80,tag=!scores_set] max_placer_x 80
scoreboard players set @s[tag=y_10,tag=!scores_set] max_placer_y 10
scoreboard players set @s[tag=y_20,tag=!scores_set] max_placer_y 20
scoreboard players set @s[tag=y_30,tag=!scores_set] max_placer_y 30
scoreboard players set @s[tag=y_40,tag=!scores_set] max_placer_y 40
scoreboard players set @s[tag=y_50,tag=!scores_set] max_placer_y 50
scoreboard players set @s[tag=y_60,tag=!scores_set] max_placer_y 60
scoreboard players set @s[tag=y_70,tag=!scores_set] max_placer_y 70
scoreboard players set @s[tag=y_80,tag=!scores_set] max_placer_y 80
scoreboard players set @s[tag=x_30,tag=!scores_set] max_placer_z 30
scoreboard players set @s[tag=x_40,tag=!scores_set] max_placer_z 40
scoreboard players set @s[tag=x_50,tag=!scores_set] max_placer_z 50
scoreboard players set @s[tag=x_60,tag=!scores_set] max_placer_z 60
scoreboard players set @s[tag=x_70,tag=!scores_set] max_placer_z 70
scoreboard players set @s[tag=x_80,tag=!scores_set] max_placer_z 80
tag @s add scores_set

# Place in core stations
execute if block ~ ~ ~ heavy_weighted_pressure_plate run function game:stations/stovetop/create
execute if block ~ ~ ~ spruce_pressure_plate run function game:stations/cutting_board/create
#execute if block ~ ~ ~ black_glazed_terracotta positioned ~ ~10 ~ run function game:stations/order_window/create
execute if block ~ ~ ~ chiseled_quartz_block if block ~ ~1 ~ oak_pressure_plate run function game:stations/prep/create
execute if block ~ ~ ~ chiseled_quartz_block if block ~ ~1 ~ spruce_button run function game:stations/bell/create
execute if block ~ ~ ~ polished_basalt if block ~ ~1 ~ oak_pressure_plate run function game:stations/prep/create
execute if block ~ ~ ~ polished_basalt if block ~ ~1 ~ spruce_button run function game:stations/bell/create
execute if block ~ ~ ~ dark_oak_slab[type=top] if block ~ ~1 ~ oak_pressure_plate run function game:stations/prep/create
execute if block ~ ~ ~ dark_oak_slab[type=top] if block ~ ~1 ~ spruce_button run function game:stations/bell/create

# Place in ingredient boxes - map (category) dependent
execute if entity @a[scores={map=1..5}] if block ~ ~ ~ #game:ingredient_boxes run function game:map/ingredient_sets/burger
execute if entity @a[scores={map=11..15}] if block ~ ~ ~ #game:ingredient_boxes run function game:map/ingredient_sets/sushi
execute if entity @a[scores={map=16..20}] if block ~ ~ ~ #game:ingredient_boxes run function game:map/ingredient_sets/pizza
execute if entity @a[scores={map=21..25}] if block ~ ~ ~ #game:ingredient_boxes run function game:map/ingredient_sets/tacos

#particle block_marker barrier ~ ~ ~

#tellraw @a ["",{"score":{"objective": "station_placer_x","name": "@s"},"color": "green"},{"text":" || "},{"score":{"objective": "max_placer_x","name": "@s"},"color": "red"}]
# Move
scoreboard players set @s station_placer_d 0
scoreboard players add @s station_placer_x 1

# Increment Z at end of X row
execute if score @s station_placer_x > @s max_placer_x run scoreboard players add @s station_placer_z 1
execute if score @s station_placer_x > @s max_placer_x run scoreboard players set @s station_placer_d 1
execute if score @s station_placer_x > @s max_placer_x run scoreboard players set @s station_placer_x 0

# Increment Y at end of Z row
execute if score @s station_placer_z > @s max_placer_z run scoreboard players add @s station_placer_y 1
execute if score @s station_placer_z > @s max_placer_z run scoreboard players set @s station_placer_d 2
execute if score @s station_placer_z > @s max_placer_z run scoreboard players set @s station_placer_x 0
execute if score @s station_placer_z > @s max_placer_z run scoreboard players set @s station_placer_z 0

# Stop at Y max
execute if score @s station_placer_y > @s max_placer_y run scoreboard players set @s station_placer_d -1
execute if score @s station_placer_y > @s max_placer_y run kill @s

# Run function in new position
execute if score @s station_placer_d matches 0 positioned ~1 ~ ~ run function game:map/station_placer

execute if score @s[tag=x_30] station_placer_d matches 1 positioned ~-30 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_30] station_placer_d matches 2 positioned ~-30 ~1 ~-30 run function game:map/station_placer
execute if score @s[tag=x_40] station_placer_d matches 1 positioned ~-40 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_40] station_placer_d matches 2 positioned ~-40 ~1 ~-40 run function game:map/station_placer
execute if score @s[tag=x_50] station_placer_d matches 1 positioned ~-50 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_50] station_placer_d matches 2 positioned ~-50 ~1 ~-50 run function game:map/station_placer
execute if score @s[tag=x_60] station_placer_d matches 1 positioned ~-60 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_60] station_placer_d matches 2 positioned ~-60 ~1 ~-60 run function game:map/station_placer
execute if score @s[tag=x_70] station_placer_d matches 1 positioned ~-70 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_70] station_placer_d matches 2 positioned ~-70 ~1 ~-70 run function game:map/station_placer
execute if score @s[tag=x_80] station_placer_d matches 1 positioned ~-80 ~ ~1 run function game:map/station_placer
execute if score @s[tag=x_80] station_placer_d matches 2 positioned ~-80 ~1 ~-80 run function game:map/station_placer
#execute if score @s station_placer_d matches 1 if score @s max_placer_x matches 60 positioned ~-60 ~ ~1 run function game:map/station_placer
#execute if score @s station_placer_d matches 2 if score @s max_placer_x matches 60 if score @s max_placer_z matches 60 positioned ~-60 ~1 ~-60 run function game:map/station_placer