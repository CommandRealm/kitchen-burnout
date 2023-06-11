# Announce PB
execute if score $display_map settings matches 1 if score $timer game_ticks < @s comp_1 unless score @s comp_1 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 2 if score $timer game_ticks < @s comp_2 unless score @s comp_2 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 3 if score $timer game_ticks < @s comp_3 unless score @s comp_3 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 4 if score $timer game_ticks < @s comp_4 unless score @s comp_4 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 5 if score $timer game_ticks < @s comp_5 unless score @s comp_5 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 6 if score $timer game_ticks < @s comp_6 unless score @s comp_6 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 7 if score $timer game_ticks < @s comp_7 unless score @s comp_7 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 8 if score $timer game_ticks < @s comp_8 unless score @s comp_8 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 9 if score $timer game_ticks < @s comp_9 unless score @s comp_9 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 10 if score $timer game_ticks < @s comp_10 unless score @s comp_10 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 11 if score $timer game_ticks < @s comp_11 unless score @s comp_11 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 12 if score $timer game_ticks < @s comp_12 unless score @s comp_12 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 13 if score $timer game_ticks < @s comp_13 unless score @s comp_13 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 14 if score $timer game_ticks < @s comp_14 unless score @s comp_14 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 15 if score $timer game_ticks < @s comp_15 unless score @s comp_15 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 16 if score $timer game_ticks < @s comp_16 unless score @s comp_16 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 17 if score $timer game_ticks < @s comp_17 unless score @s comp_17 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 18 if score $timer game_ticks < @s comp_18 unless score @s comp_18 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 19 if score $timer game_ticks < @s comp_19 unless score @s comp_19 matches 2147483647 run function game:mode_competitive/pb
execute if score $display_map settings matches 20 if score $timer game_ticks < @s comp_20 unless score @s comp_20 matches 2147483647 run function game:mode_competitive/pb
# Save WR Name
setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"selector":"@a[gamemode=adventure,tag=playing,limit=1,sort=nearest]","color":"blue"}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
execute if score $display_map settings matches 1 if score $timer game_ticks < $wr comp_1 run data modify storage comp_wr_holders 1 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 2 if score $timer game_ticks < $wr comp_2 run data modify storage comp_wr_holders 2 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 3 if score $timer game_ticks < $wr comp_3 run data modify storage comp_wr_holders 3 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 4 if score $timer game_ticks < $wr comp_4 run data modify storage comp_wr_holders 4 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 5 if score $timer game_ticks < $wr comp_5 run data modify storage comp_wr_holders 5 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 6 if score $timer game_ticks < $wr comp_6 run data modify storage comp_wr_holders 6 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 7 if score $timer game_ticks < $wr comp_7 run data modify storage comp_wr_holders 7 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 8 if score $timer game_ticks < $wr comp_8 run data modify storage comp_wr_holders 8 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 9 if score $timer game_ticks < $wr comp_9 run data modify storage comp_wr_holders 9 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 10 if score $timer game_ticks < $wr comp_10 run data modify storage comp_wr_holders 10 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 11 if score $timer game_ticks < $wr comp_11 run data modify storage comp_wr_holders 11 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 12 if score $timer game_ticks < $wr comp_12 run data modify storage comp_wr_holders 12 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 13 if score $timer game_ticks < $wr comp_13 run data modify storage comp_wr_holders 13 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 14 if score $timer game_ticks < $wr comp_14 run data modify storage comp_wr_holders 14 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 15 if score $timer game_ticks < $wr comp_15 run data modify storage comp_wr_holders 15 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 16 if score $timer game_ticks < $wr comp_16 run data modify storage comp_wr_holders 16 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 17 if score $timer game_ticks < $wr comp_17 run data modify storage comp_wr_holders 17 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 18 if score $timer game_ticks < $wr comp_18 run data modify storage comp_wr_holders 18 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 19 if score $timer game_ticks < $wr comp_19 run data modify storage comp_wr_holders 19 set from block 0 -62 0 front_text.messages[0]
execute if score $display_map settings matches 20 if score $timer game_ticks < $wr comp_20 run data modify storage comp_wr_holders 20 set from block 0 -62 0 front_text.messages[0]
# Announce WR
execute if score $display_map settings matches 1 if score $timer game_ticks < $wr comp_1 unless score $wr comp_1 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 2 if score $timer game_ticks < $wr comp_2 unless score $wr comp_2 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 3 if score $timer game_ticks < $wr comp_3 unless score $wr comp_3 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 4 if score $timer game_ticks < $wr comp_4 unless score $wr comp_4 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 5 if score $timer game_ticks < $wr comp_5 unless score $wr comp_5 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 6 if score $timer game_ticks < $wr comp_6 unless score $wr comp_6 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 7 if score $timer game_ticks < $wr comp_7 unless score $wr comp_7 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 8 if score $timer game_ticks < $wr comp_8 unless score $wr comp_8 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 9 if score $timer game_ticks < $wr comp_9 unless score $wr comp_9 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 10 if score $timer game_ticks < $wr comp_10 unless score $wr comp_10 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 11 if score $timer game_ticks < $wr comp_11 unless score $wr comp_11 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 12 if score $timer game_ticks < $wr comp_12 unless score $wr comp_12 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 13 if score $timer game_ticks < $wr comp_13 unless score $wr comp_13 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 14 if score $timer game_ticks < $wr comp_14 unless score $wr comp_14 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 15 if score $timer game_ticks < $wr comp_15 unless score $wr comp_15 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 16 if score $timer game_ticks < $wr comp_16 unless score $wr comp_16 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 17 if score $timer game_ticks < $wr comp_17 unless score $wr comp_17 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 18 if score $timer game_ticks < $wr comp_18 unless score $wr comp_18 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 19 if score $timer game_ticks < $wr comp_19 unless score $wr comp_19 matches 2147483647 run function game:mode_competitive/wr
execute if score $display_map settings matches 20 if score $timer game_ticks < $wr comp_20 unless score $wr comp_20 matches 2147483647 run function game:mode_competitive/wr
# Save WR Time
execute if score $display_map settings matches 1 run scoreboard players operation $wr comp_1 < $timer game_ticks
execute if score $display_map settings matches 2 run scoreboard players operation $wr comp_2 < $timer game_ticks
execute if score $display_map settings matches 3 run scoreboard players operation $wr comp_3 < $timer game_ticks
execute if score $display_map settings matches 4 run scoreboard players operation $wr comp_4 < $timer game_ticks
execute if score $display_map settings matches 5 run scoreboard players operation $wr comp_5 < $timer game_ticks
execute if score $display_map settings matches 6 run scoreboard players operation $wr comp_6 < $timer game_ticks
execute if score $display_map settings matches 7 run scoreboard players operation $wr comp_7 < $timer game_ticks
execute if score $display_map settings matches 8 run scoreboard players operation $wr comp_8 < $timer game_ticks
execute if score $display_map settings matches 9 run scoreboard players operation $wr comp_9 < $timer game_ticks
execute if score $display_map settings matches 10 run scoreboard players operation $wr comp_10 < $timer game_ticks
execute if score $display_map settings matches 11 run scoreboard players operation $wr comp_11 < $timer game_ticks
execute if score $display_map settings matches 12 run scoreboard players operation $wr comp_12 < $timer game_ticks
execute if score $display_map settings matches 13 run scoreboard players operation $wr comp_13 < $timer game_ticks
execute if score $display_map settings matches 14 run scoreboard players operation $wr comp_14 < $timer game_ticks
execute if score $display_map settings matches 15 run scoreboard players operation $wr comp_15 < $timer game_ticks
execute if score $display_map settings matches 16 run scoreboard players operation $wr comp_16 < $timer game_ticks
execute if score $display_map settings matches 17 run scoreboard players operation $wr comp_17 < $timer game_ticks
execute if score $display_map settings matches 18 run scoreboard players operation $wr comp_18 < $timer game_ticks
execute if score $display_map settings matches 19 run scoreboard players operation $wr comp_19 < $timer game_ticks
execute if score $display_map settings matches 20 run scoreboard players operation $wr comp_20 < $timer game_ticks
# Save PB
execute if score $display_map settings matches 1 run scoreboard players operation @s comp_1 < $timer game_ticks
execute if score $display_map settings matches 2 run scoreboard players operation @s comp_2 < $timer game_ticks
execute if score $display_map settings matches 3 run scoreboard players operation @s comp_3 < $timer game_ticks
execute if score $display_map settings matches 4 run scoreboard players operation @s comp_4 < $timer game_ticks
execute if score $display_map settings matches 5 run scoreboard players operation @s comp_5 < $timer game_ticks
execute if score $display_map settings matches 6 run scoreboard players operation @s comp_6 < $timer game_ticks
execute if score $display_map settings matches 7 run scoreboard players operation @s comp_7 < $timer game_ticks
execute if score $display_map settings matches 8 run scoreboard players operation @s comp_8 < $timer game_ticks
execute if score $display_map settings matches 9 run scoreboard players operation @s comp_9 < $timer game_ticks
execute if score $display_map settings matches 10 run scoreboard players operation @s comp_10 < $timer game_ticks
execute if score $display_map settings matches 11 run scoreboard players operation @s comp_11 < $timer game_ticks
execute if score $display_map settings matches 12 run scoreboard players operation @s comp_12 < $timer game_ticks
execute if score $display_map settings matches 13 run scoreboard players operation @s comp_13 < $timer game_ticks
execute if score $display_map settings matches 14 run scoreboard players operation @s comp_14 < $timer game_ticks
execute if score $display_map settings matches 15 run scoreboard players operation @s comp_15 < $timer game_ticks
execute if score $display_map settings matches 16 run scoreboard players operation @s comp_16 < $timer game_ticks
execute if score $display_map settings matches 17 run scoreboard players operation @s comp_17 < $timer game_ticks
execute if score $display_map settings matches 18 run scoreboard players operation @s comp_18 < $timer game_ticks
execute if score $display_map settings matches 19 run scoreboard players operation @s comp_19 < $timer game_ticks
execute if score $display_map settings matches 20 run scoreboard players operation @s comp_20 < $timer game_ticks

# Update times
function lobby:map_selection/switch_maps