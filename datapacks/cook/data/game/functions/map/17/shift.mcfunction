scoreboard players set $mod random 10
function random:random
# Slide over ingredients when summoned
execute if score $output random matches 9 run tp @s ~ ~ ~-9
execute if score $output random matches 8 run tp @s ~ ~ ~-8
execute if score $output random matches 7 run tp @s ~ ~ ~-7
execute if score $output random matches 6 run tp @s ~ ~ ~-6
execute if score $output random matches 5 run tp @s ~ ~ ~-5
execute if score $output random matches 4 run tp @s ~ ~ ~-4
execute if score $output random matches 3 run tp @s ~ ~ ~-3
execute if score $output random matches 2 run tp @s ~ ~ ~-2
execute if score $output random matches 1 run tp @s ~ ~ ~-1

tag @s remove needs_shift