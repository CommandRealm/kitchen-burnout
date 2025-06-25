execute as @a[tag=!joined] run function general:join_game
execute as @a[scores={has_left=1..}] run function general:leave_game

execute if score $game state matches 1 run function game:main