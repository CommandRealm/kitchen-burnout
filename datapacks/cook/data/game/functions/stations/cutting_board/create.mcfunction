##Called to create a cutting board
setblock ~ ~ ~ spruce_pressure_plate[powered=true]
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["cutting_board","station","die_between_games","raycast_target"]}

##armor stand
summon minecraft:armor_stand ~0.3125 ~-0.732 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["cutting_board_item","die_between_games","display_item"],Silent:1b}
