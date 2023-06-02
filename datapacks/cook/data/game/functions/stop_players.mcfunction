scoreboard players set $no_contest state 1
function game:stop_message_alt
execute as @e[type=#game:reset_boxes,tag=reset_boxes,tag=!tutorial] at @s run function game:map/reset_boxes
execute as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
schedule function game:end 5t
tellraw @a ["",{"text":"- ","color":"gray"},{"translate":"Not enough players.","color":"red","bold":true}]