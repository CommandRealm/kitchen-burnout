execute if score $place_plate_1 recipe_cooldown matches 1.. store success score $success recipe_cooldown run tag @e[type=marker,tag=prep_display,tag=!tutorial,tag=!2,limit=1] add place_plate
execute if score $place_plate_2 recipe_cooldown matches 1.. store success score $success recipe_cooldown run tag @e[type=marker,tag=prep_display,tag=!tutorial,tag=2,limit=1] add place_plate
execute if score $place_plate_t recipe_cooldown matches 1.. store success score $success recipe_cooldown run tag @e[type=marker,tag=prep_display,tag=tutorial,limit=1] add place_plate

execute if score $place_plate_1 recipe_cooldown matches 1.. if score $success recipe_cooldown matches 1.. run scoreboard players reset $place_plate_1 recipe_cooldown
execute if score $place_plate_2 recipe_cooldown matches 1.. if score $success recipe_cooldown matches 1.. run scoreboard players reset $place_plate_2 recipe_cooldown
execute if score $place_plate_t recipe_cooldown matches 1.. if score $success recipe_cooldown matches 1.. run scoreboard players reset $place_plate_t recipe_cooldown

scoreboard players reset $success recipe_cooldown
