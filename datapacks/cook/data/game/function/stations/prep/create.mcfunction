# Called to create a prep station
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=prep,distance=..20]
setblock ~ ~ ~ oak_pressure_plate[powered=true]

execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["prep","prep_base","station","die_between_games","interactable"],width:1.001f,height:0.1f,response:true}

scoreboard players set @n[tag=prep_base] prep_display 0