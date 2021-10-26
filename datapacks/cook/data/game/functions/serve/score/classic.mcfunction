# Scoring for Classic Mode
scoreboard players add $finished_recipes game 1
## Add base points
scoreboard players add $score game 3
## Add bonus points for completing recipe in time
scoreboard players operation @s recipe_timer /= $20 number
function game:serve/score/time_bonus
scoreboard players operation $recipe_timer game = @s recipe_timer
execute if score @s recipe_timer <= $time_bonus game run scoreboard players add $score game 1