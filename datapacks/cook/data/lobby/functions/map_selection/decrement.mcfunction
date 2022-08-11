advancement revoke @s only lobby:decrement_map
execute if score $game state matches 0 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1
execute unless score $game state matches 0 run function options:error

execute if score $game state matches 0 run scoreboard players remove $display_map settings 1
execute if score $display_map settings matches ..0 run scoreboard players set $display_map settings 20

function lobby:map_selection/switch_maps