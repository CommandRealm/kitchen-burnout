# Ending function of the game

# Resets ingredient boxes back to their normal blocks
execute as @e[type=marker,tag=ingredient_box] at @s run function game:map/reset_boxes
execute as @e[type=marker,tag=fish_spawner] at @s run function game:map/reset_boxes
execute as @e[type=marker,tag=customer_line] at @s run function game:map/reset_boxes

# Reset ice blocks
execute as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice

# Removes all entities that should die between games (most of them)
tp @e[tag=die_between_games] 0 -10000 0
kill @e[tag=die_between_games]

# Resets timer
scoreboard players set $timer game_ticks 0
bossbar set game:timer visible false
bossbar set game:progress_1 visible false
bossbar set game:progress_2 visible false

# Sets game state to 0
scoreboard players set $game state 0

#tag @a[team=spectator] add playing

title @a[tag=playing] times 0 25 5

# Resets players
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
clear @a[tag=playing]
tp @a[tag=playing] 0 66 0
scoreboard players reset @a freeze_time

# Resetting the dropped knowledge book objective.
scoreboard players reset @a[tag=playing] drop_ready_book

# healing players
effect give @a[tag=playing] regeneration 1 255 true

# Scores
tellraw @a[tag=!playing] ["",{"text":"- ","color":"gray"},{"translate":"The game has ended.","color":"green"}]
tellraw @a[tag=playing] ["",{"text":"- ","color":"gray"},{"translate":"Game over!","color":"green","bold":true}]

execute if score $mode settings matches 1 if score $score game > $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Doers","color":"aqua","bold":true},{"translate":" won!","color":"gold"}]
execute if score $mode settings matches 1 if score $score game < $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Diners","color":"light_purple","bold":true},{"translate":" won!","color":"gold"}]
execute if score $mode settings matches 1 if score $score game = $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"It's a tie!","color":"gold"}]
execute if score $mode settings matches 0 run tellraw @a[tag=playing] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score"},"color":"gold","bold":true}]
execute if score $mode settings matches 0 run tellraw @a[tag=playing] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes"},"color":"gold","bold":true}]

execute if score $mode settings matches 1 run tellraw @a[tag=playing,tag=!team_2] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 run tellraw @a[tag=playing,tag=!team_2] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes_1"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 run tellraw @a[tag=playing,tag=team_2] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score_2"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 run tellraw @a[tag=playing,tag=team_2] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes_2"},"color":"gold","bold":true}]

execute if score $mode settings matches 2 if score $winner shuffle matches 1 run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Doers","color":"aqua","bold":true},{"translate":" won!","color":"gold"}]
execute if score $mode settings matches 2 if score $winner shuffle matches 2 run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Diners","color":"light_purple","bold":true},{"translate":" won!","color":"gold"}]
execute if score $mode settings matches 2 run tellraw @a ["",{"text":"- ","color":"gray"},{"translate":"Time: ","color":"green"},{"score":{"objective":"game_minutes","name":"$timer"},"color":"gold","bold":true},{"text":":","color":"gold","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"gold","bold":true}]


# Reset teams
execute as @a[tag=playing] at @s run function general:rank

# Removing tags
tag @a[tag=playing] remove mechanics
tag @a[tag=playing] remove playing
tag @a[tag=playing] remove team_2

scoreboard objectives setdisplay sidebar

forceload remove all

xp set @a 0 levels
xp set @a 0 points