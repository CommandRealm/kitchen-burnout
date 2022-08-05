advancement revoke @s only lobby:increment_map
playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2

scoreboard players add $display_map settings 1
execute if score $display_map settings matches 21.. run scoreboard players set $display_map settings 1

function lobby:map_selection/switch_maps