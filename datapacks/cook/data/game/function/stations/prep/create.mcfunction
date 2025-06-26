# Called to create a prep station
execute align xyz run kill @e[tag=prep,tag=!prep_base,dx=0,dy=255,dz=0]
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=prep_base,distance=..0.5]
setblock ~ ~ ~ oak_pressure_plate[powered=true]

execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["prep","prep_base","station","die_between_games","interactable"],width:1.0f,height:0.1f,response:true}

scoreboard players set @n[tag=prep_base] prep_display 0