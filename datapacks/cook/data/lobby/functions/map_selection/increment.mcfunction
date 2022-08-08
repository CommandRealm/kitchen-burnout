advancement revoke @s only lobby:increment_map
execute if score $game state matches 0 run playsound block.dispenser.fail master @s ~ ~ ~ 1 1.2
execute unless score $game state matches 0 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 .7 

execute if score $game state matches 0 run scoreboard players add $display_map settings 1
execute if score $display_map settings matches 21.. run scoreboard players set $display_map settings 1

function lobby:map_selection/switch_maps