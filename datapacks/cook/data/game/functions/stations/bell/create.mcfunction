# Called to create a bell
#setblock ~ ~1 ~ oak_pressure_plate[powered=true]
summon minecraft:armor_stand ~0.3125 ~-1.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["bell","die_between_games","display_item"],Silent:1b,HandItems:[{id:"minecraft:spruce_button",Count:1b,tag:{CustomModelData:1}},{}]}

# Icon
execute if score $glowing settings matches 1 run summon minecraft:area_effect_cloud ~ ~-.3 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["die_between_games","station_display_text"],CustomNameVisible:1b,CustomName:'[{"text":"🔔","color":"gold"}]'}
