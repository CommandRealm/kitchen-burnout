execute as @a at @s unless entity @s[scores={has_joined=1..}] run function general:join_game
execute as @a[scores={has_left=1..}] run function general:leave_game

execute if score $game state matches 1 run function game:main