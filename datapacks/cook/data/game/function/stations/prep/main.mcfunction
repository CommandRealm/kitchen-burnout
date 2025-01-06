# Main function for prep stations, called by the prep_base interaction entity
execute if score @s prep_display matches 0..1 as @e[type=interaction,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/separate
execute if score @s prep_display matches -1 as @e[type=interaction,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/regroup


execute if score @s[tag=someone_is_looking] prep_display matches -1..0 run function game:stations/prep/start_expanding
execute if score @s[tag=!someone_is_looking] prep_display matches 1 run function game:stations/prep/start_collapsing


tag @s remove someone_is_looking