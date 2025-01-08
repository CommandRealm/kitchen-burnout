# Main function for prep stations, called by the prep_base interaction entity
execute if score @s prep_display matches 1 as @e[type=item_display,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/separate
execute if score @s prep_display matches -1 as @e[type=item_display,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/regroup

# We can stop moving for now
execute unless score @s prep_display matches 0 unless entity @e[type=item_display,tag=prep_ingredient,distance=..10,tag=!final_position] run function game:stations/prep/stop_moving

# Start expanding or collapsing based on if someone is looking at the station
execute if score @s[tag=someone_is_looking] prep_display matches -1..0 run function game:stations/prep/start_expanding
execute if score @s[tag=!someone_is_looking] prep_display matches 0..1 run function game:stations/prep/start_collapsing


tag @s remove someone_is_looking