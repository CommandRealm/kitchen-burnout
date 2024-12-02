tag @s remove using_cutting_board
tag @s remove using_fishing_net
execute anchored eyes positioned ^ ^ ^1.75 if entity @n[type=marker,tag=cutting_board,distance=..0.75] run tag @s add using_cutting_board
execute anchored eyes positioned ^ ^ ^3 if entity @e[type=#game:fish,tag=can_catch,distance=..2.5] run tag @s add using_fishing_net

execute as @s[tag=using_cutting_board] run return run function game:stations/cutting_board/using
execute as @s[tag=using_fishing_net] if score @s held_item matches 0 run return run function game:inventory/tools/start_holding_fishing_net

# Otherwise the player should just be holding an ingredient or nothing