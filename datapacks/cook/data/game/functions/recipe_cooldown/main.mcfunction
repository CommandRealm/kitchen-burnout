# Set flag to confirm that a countdown is happening
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..},tag=tutorial] run scoreboard players set $flag_t recipe_cooldown 1
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..},tag=!tutorial,tag=!team_2] run scoreboard players set $flag recipe_cooldown 1
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..},tag=team_2] run scoreboard players set $flag_2 recipe_cooldown 1
# Decrement cooldown if area is loaded for server
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..}] at @s unless block ~ -63 ~ potted_white_tulip run scoreboard players remove @s recipe_cooldown 1
# Reset cooldown if lagging
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0}] at @s unless entity @e[type=marker,tag=prep_display,sort=nearest,limit=1,distance=..500] run scoreboard players set @s recipe_cooldown 60
# Giving players a new recipe
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=tutorial] run scoreboard players set $flag_t recipe_cooldown 0
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial,tag=!team_2] run scoreboard players set $flag recipe_cooldown 0
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=team_2] run scoreboard players set $flag_2 recipe_cooldown 0
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial,tag=!team_2] at @s run scoreboard players set $place_plate_1 recipe_cooldown 1
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial,tag=team_2] at @s run scoreboard players set $place_plate_2 recipe_cooldown 1
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=tutorial] at @s run scoreboard players set $place_plate_t recipe_cooldown 1
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=tutorial] at @s run function lobby:tutorial/order
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=tutorial] at @s run function lobby:tutorial/ingredients
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 0 run function game:recipe_cooldown/classic/order
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 0 run function game:recipe_cooldown/classic/ingredients
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 1 run function game:recipe_cooldown/versus/order
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 1 run function game:recipe_cooldown/versus/ingredients
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 2 run function game:recipe_cooldown/shuffle/order
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 2 run function game:recipe_cooldown/shuffle/ingredients
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 3 run function game:recipe_cooldown/competitive/order
execute as @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=0},tag=!tutorial] at @s if score $mode settings matches 3 run function game:recipe_cooldown/competitive/ingredients