# Called by a player that should exit the cutting board mode
tag @s remove cutting_mode
attribute @s movement_speed modifier remove game:cutting_mode

# Check if there are no other players cutting this cutting board, in which case, hide the cutting board's inputs
scoreboard players operation $match cutting_id = @s cutting_id
scoreboard players set $in_use cutting_id 0
scoreboard players reset @s cutting_id

execute as @a[tag=cutting_mode] if score @s cutting_id = $match cutting_id run scoreboard players set $in_use cutting_id 1
execute if score $in_use cutting_id matches 0 as @e[type=interaction,tag=cutting_board] at @s if score @s cutting_id = $match cutting_id run function game:stations/cutting_board/cutting/stop