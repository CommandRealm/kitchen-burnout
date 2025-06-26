# Main function for prep stations, called by the prep_station interaction entity
# Start expanding or collapsing based on if someone is looking at the station
execute if score @s[tag=someone_is_looking] prep_display matches -1..0 run function game:stations/prep/start_expanding
execute if score @s[tag=!someone_is_looking] prep_display matches 0..1 run function game:stations/prep/start_collapsing


tag @s remove someone_is_looking