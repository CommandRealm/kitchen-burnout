# Called to create a cutting board
setblock ~ ~ ~ heavy_weighted_pressure_plate[power=15]
summon marker ~ ~ ~ {Tags:["stovetop","station","die_between_games","raycast_target"]}

# Display item
#execute unless score $glowing settings matches 1 run summon item ~ ~.2 ~ {Item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:1}},Tags:["die_between_games","station_display_item"],NoGravity:1b,PickupDelay:32767,Age:-32768}
#execute if score $glowing settings matches 1 run summon item ~ ~.2 ~ {Item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:1}},Tags:["die_between_games","station_display_item"],NoGravity:1b,PickupDelay:32767,Age:-32768,Glowing:1b}

# armor stand
summon minecraft:armor_stand ~-0.3125 ~-0.732 ~-0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[270f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["stovetop_item","die_between_games","display_item"],Silent:1b}
