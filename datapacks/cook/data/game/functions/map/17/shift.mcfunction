# Slide over ingredients when summoned
scoreboard players remove $output random 1
tp ~ ~ ~-1
execute if score $output random matches 1.. run function game:map/17/shift