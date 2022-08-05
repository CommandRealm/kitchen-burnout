advancement revoke @s only lobby:decrement_map
playsound block.dispenser.fail master @s ~ ~ ~ 1 1

scoreboard players remove $display_map settings 1
execute if score $display_map settings matches ..0 run scoreboard players set $display_map settings 20

function lobby:map_selection/switch_maps