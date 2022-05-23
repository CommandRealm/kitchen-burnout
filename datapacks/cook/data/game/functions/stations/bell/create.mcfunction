# Called to create a bell
#setblock ~ ~1 ~ oak_pressure_plate[powered=true]
summon minecraft:armor_stand ~0.3125 ~-1.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["bell","die_between_games","display_item"],Silent:1b,HandItems:[{id:"minecraft:spruce_button",Count:1b,tag:{CustomModelData:1}},{}]}