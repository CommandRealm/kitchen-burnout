execute as @a[gamemode=adventure,tag=playing] at @s run function game:players

execute as @e[type=interaction,tag=station] at @s run function game:stations/main

# For clickable interaction entities, check if they are being interacted with
execute as @e[type=interaction,tag=interactable] at @s run function game:stations/check_interaction