# Called to create a cutting board
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=cutting_board,distance=..0.5]
setblock ~ ~ ~ spruce_pressure_plate[powered=true]
summon marker ~ ~ ~ {Tags:["cutting_board","station","die_between_games","raycast_target"]}

# Icon
execute if score $glowing settings matches 1 run summon minecraft:area_effect_cloud ~ ~-.4 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["die_between_games","station_display_text"],CustomNameVisible:1b,CustomName:'[{"text":"🗡","color":"aqua"}]'}

# armor stand
execute align xyz run summon item_display ~0.5 ~0.0625 ~0.5 {Tags:["cutting_board","cutting_board_item","die_between_games"],Rotation:[0f,90f]}
