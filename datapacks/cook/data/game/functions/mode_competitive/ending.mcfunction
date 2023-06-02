scoreboard players add $end_timer shuffle 1
execute if score $end_timer shuffle matches ..2 run worldborder add 1 1000000
execute if score $end_timer shuffle matches 8 run function game:stop_message_alt
execute if score $end_timer shuffle matches 48 as @e[type=#game:reset_boxes,tag=reset_boxes,tag=!tutorial] at @s run function game:map/reset_boxes
execute if score $end_timer shuffle matches 48 as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute if score $end_timer shuffle matches 48 as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute if score $end_timer shuffle matches 51.. run function game:end