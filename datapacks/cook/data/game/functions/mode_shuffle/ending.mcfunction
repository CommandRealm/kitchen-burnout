scoreboard players add $end_timer shuffle 1
execute if score $end_timer shuffle matches 8 run function game:stop_message_shuffle
execute if score $end_timer shuffle matches 28 as @e[type=marker,tag=ingredient_box] at @s run function game:map/reset_boxes
execute if score $end_timer shuffle matches 28 as @e[type=marker,tag=fish_spawner] at @s run function game:map/reset_boxes
execute if score $end_timer shuffle matches 28 as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute if score $end_timer shuffle matches 28 as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute if score $end_timer shuffle matches 31.. run function game:end