# Place in core stations
execute if block ~ ~ ~ heavy_weighted_pressure_plate run function game:stations/stovetop/create
execute if block ~ ~ ~ spruce_pressure_plate run function game:stations/cutting_board/create
execute if block ~ ~ ~ black_glazed_terracotta positioned ~ ~10 ~ run function game:stations/order_window/create
execute if block ~ ~ ~ chiseled_quartz_block if block ~ ~1 ~ oak_pressure_plate run function game:stations/prep/create
execute if block ~ ~ ~ chiseled_quartz_block if block ~ ~1 ~ spruce_button run function game:stations/bell/create

# Place in ingredient boxes - map (category) dependent
execute if entity @a[scores={map=1}] if block ~ ~ ~ #game:ingredient_boxes run function game:map/ingredient_sets/burger


#particle barrier ~ ~ ~ 0 0 0 1 0 force

# Move
scoreboard players set @s station_placer_d 0
scoreboard players add @s station_placer_x 1

# Increment Z at end of X row
execute if score @s station_placer_x > $max station_placer_x run scoreboard players add @s station_placer_z 1
execute if score @s station_placer_x > $max station_placer_x run scoreboard players set @s station_placer_d 1
execute if score @s station_placer_x > $max station_placer_x run scoreboard players set @s station_placer_x 0

# Increment Y at end of Z row
execute if score @s station_placer_z > $max station_placer_z run scoreboard players add @s station_placer_y 1
execute if score @s station_placer_z > $max station_placer_z run scoreboard players set @s station_placer_d 2
execute if score @s station_placer_z > $max station_placer_z run scoreboard players set @s station_placer_x 0
execute if score @s station_placer_z > $max station_placer_z run scoreboard players set @s station_placer_z 0

# Stop at Y max
execute if score @s station_placer_y > $max station_placer_y run scoreboard players set @s station_placer_d -1
execute if score @s station_placer_y > $max station_placer_y run kill @s

# Run function in new position
execute if score @s station_placer_d matches 0 positioned ~1 ~ ~ run function game:map/station_placer
execute if score @s station_placer_d matches 1 positioned ~-60 ~ ~1 run function game:map/station_placer
execute if score @s station_placer_d matches 2 positioned ~-60 ~1 ~-60 run function game:map/station_placer