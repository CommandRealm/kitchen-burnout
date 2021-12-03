# Called to add a recipe

function random:random

# Creating the recipe queue
execute if score $output random matches 0 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[0]
execute if score $output random matches 1 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[1]
execute if score $output random matches 2 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[2]
execute if score $output random matches 3 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[3]
execute if score $output random matches 4 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[4]
execute if score $output random matches 5 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[5]
execute if score $output random matches 6 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[6]
execute if score $output random matches 7 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[7]
execute if score $output random matches 8 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[8]
execute if score $output random matches 9 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[9]
execute if score $output random matches 10 run data modify storage orders1 Recipe append from storage recipe:bank Recipe[10]

# Run this again if necessary.
scoreboard players remove $calculate calculate 1
execute if score $calculate calculate matches 1.. run function game:default/add_recipe