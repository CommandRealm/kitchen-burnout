# Called to create a prep station
execute unless entity @a[gamemode=adventure,tag=playing,scores={map=22},distance=..500] run setblock ~ ~ ~ air
#setblock ~ ~ ~ oak_pressure_plate[powered=true]
summon marker ~ ~ ~ {Tags:["prep_display","reset_boxes","prep_slot","station","die_between_games"]}
summon text_display ~ ~ ~ {Tags:["prep_display","die_between_games","prep_text"],text:'[{"translate":"Right click","color":"gold"},{"translate":" to add an ingredient to the order."},{"text":"\\n↓ ↓ ↓","color":"white","bold":true}]',background:0,transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.5f,0.0f]},billboard:"vertical",line_width:100}
scoreboard players set @e[type=marker,tag=prep_display,tag=!2,sort=nearest,limit=1,distance=..500] prep_display 0

# Dish
#summon marker ~ ~ ~ {Tags:["prep_dish","station","die_between_games","raycast_target"]}
#summon minecraft:armor_stand ~0.3125 ~-0.6 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["prep_dish","die_between_games","display_item"],Silent:1b}
