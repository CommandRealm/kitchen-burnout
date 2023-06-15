# Set vertical translate value for prep station ingredient
# Starts at 7350 <==> 0.735f
scoreboard players set @s prep_position 7350
execute as @s[tag=!2] run scoreboard players operation $offset prep_position = $1 prep_position
execute as @s[tag=2] run scoreboard players operation $offset prep_position = $2 prep_position
