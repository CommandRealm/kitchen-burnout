# Called to create a cutting board
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=cutting_board,distance=..0.5]
setblock ~ ~ ~ spruce_pressure_plate[powered=true]

execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["cutting_board","station","die_between_games","interactable"],width:1.001f,height:0.2f,response:true}
execute align xyz run summon item_display ~0.5 ~0.0625 ~0.5 {Tags:["cutting_board","station","die_between_games"],Rotation:[0f, 90f],item_display:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.65f,0.65f,0.65f],translation:[0f,0f,0f]}}
# Icon
#summon minecraft:area_effect_cloud ~ ~-.4 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["die_between_games","station_display_text"],CustomNameVisible:1b,CustomName:'[{"text":"🗡","color":"aqua"}]'}

scoreboard players set @n[type=interaction,tag=cutting_board,distance=..0.5] station_state 2