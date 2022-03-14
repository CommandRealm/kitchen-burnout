# Called to create a prep station
setblock ~ ~ ~ oak_pressure_plate[powered=true]
execute if entity @e[type=marker,tag=prep_display] run summon marker ~ ~ ~ {Tags:["prep_display","prep_slot","station","die_between_games","2"]}
execute unless entity @e[type=marker,tag=prep_display] run summon marker ~ ~ ~ {Tags:["prep_display","prep_slot","station","die_between_games"]}
scoreboard players set @e[type=marker,tag=prep_display,tag=!2,sort=nearest,limit=1] prep_display 0
scoreboard players set @e[type=marker,tag=prep_display,tag=2,sort=nearest,limit=1] prep_display 0

# Dish
#summon marker ~ ~ ~ {Tags:["prep_dish","station","die_between_games","raycast_target"]}
#summon minecraft:armor_stand ~0.3125 ~-0.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["prep_dish","die_between_games","display_item"],Silent:1b}
