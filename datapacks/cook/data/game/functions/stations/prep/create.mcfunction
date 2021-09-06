# Called to create a prep station
setblock ~ ~1 ~ oak_pressure_plate[powered=true]
summon marker ~ ~1 ~ {Tags:["prep_display","station","die_between_games","raycast_target"]}
summon marker ~ ~ ~ {Tags:["prep_dish","station","die_between_games","raycast_target"]}

# armor stand
summon minecraft:armor_stand ~0.3125 ~-0.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["prep_dish","die_between_games","display_item"],Silent:1b}
