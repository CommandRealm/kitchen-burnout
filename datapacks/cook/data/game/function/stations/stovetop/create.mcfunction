# Called to create a stovetop
execute align xyz run kill @e[tag=stovetop,dx=0,dy=0,dz=0]
setblock ~ ~ ~ heavy_weighted_pressure_plate[power=15]

execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["stovetop","station","reset_between_games","interactable"],width:1.0f,height:0.1f,response:true}
execute align xyz run summon item_display ~0.5 ~0.075 ~0.5 {Tags:["stovetop","station","reset_between_games"],Rotation:[0f, 90f],item_display:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.65f,0.65f,0.65f],translation:[0f,0f,0f]}}
# Icon
#summon minecraft:area_effect_cloud ~ ~-.4 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["reset_between_games","station_display_text"],CustomNameVisible:1b,CustomName:'[{"text":"🔥","color":"red"}]'}