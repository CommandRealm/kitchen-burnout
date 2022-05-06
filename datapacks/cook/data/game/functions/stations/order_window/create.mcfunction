## UNUSED
# Called to create a order window
#setblock ~ ~ ~ spruce_pressure_plate[powered=true]
summon marker ~ ~ ~ {Tags:["order_window","station","die_between_games","raycast_target"]}

# armor stand
summon minecraft:armor_stand ~0.3125 ~-0.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["ingredient_item","die_between_games","display_item"],Silent:1b}
