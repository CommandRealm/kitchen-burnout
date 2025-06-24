#tag @s remove using_fishing_net
#execute positioned ^ ^ ^3 if entity @e[type=#game:fish,tag=can_catch,distance=..2.5] run tag @s add using_fishing_net

execute as @s[tag=!holding_knife] positioned ^ ^ ^1.5 if entity @n[type=interaction,tag=cutting_board,tag=cuttable,distance=..1] run return run function game:inventory/tools/start_holding_knife
execute as @s[tag=holding_knife] positioned ^ ^ ^1.5 unless entity @n[type=interaction,tag=cutting_board,tag=cuttable,distance=..1] run return run function game:inventory/tools/stop_holding_knife

#execute as @s[tag=cutting] run return run function game:stations/cutting_board/using
#execute as @s[tag=using_fishing_net] if score @s held_item matches 0 run return run function game:inventory/tools/start_holding_fishing_net

# Otherwise the player should just be holding an ingredient or nothing