##The function that runs whenever the game is running.

##General timer
scoreboard players add $time game 1

##Mode
##execute if score $mode settings matches 0 run function game:default/main

##If someone votes to end the game
# execute as @a[tag=playing,scores={end=1..},team=game] at @s run function game:vote_end/vote

##Check inventory
execute if entity @a[advancements={game:inventory_changed=true}] run function game:inventory/check

##Click cooldown
execute if entity @a[tag=playing,scores={click_cooldown=1..},limit=1] run function game:click/cooldown/main

##When we right-click
execute as @a[tag=playing,scores={click=1..}] at @s unless entity @s[scores={click_cooldown=1..}] run function game:click/start 

##If a station has something going on.
execute if entity @e[type=area_effect_cloud,scores={station=1..}] run function game:stations/main

##If there is a recipe cooldown
execute if entity @a[scores={recipe_cooldown=1..}] run function game:recipe_cooldown/main