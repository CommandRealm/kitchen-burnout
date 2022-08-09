#> game:end Ending function of the game. Some things here are also used in game:restart_early

# Reset knowledge books
clear @a knowledge_book
# Resets ingredient boxes back to their normal blocks
execute as @e[type=marker,tag=reset_boxes,tag=!tutorial] at @s run function game:map/reset_boxes

# Reset ice blocks
execute as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute as @e[type=marker,tag=danger_zone] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace fire
fill 2538 104 1521 2510 124 1478 white_stained_glass replace minecraft:structure_void
fill 12538 104 1521 12510 124 1478 white_stained_glass replace minecraft:structure_void

# Removes all entities that should die between games (most of them)
tp @e[tag=die_between_games] 0 -10000 0
kill @e[tag=die_between_games]

# Advancements
scoreboard players add @a[gamemode=adventure,tag=playing] finished_games 1
advancement grant @a[scores={finished_games=25..}] only advancements:milestone_25
advancement grant @a[tag=m_1,tag=m_9,tag=m_2,tag=m_5,tag=m_17,tag=m_11,tag=m_13,tag=m_15,tag=m_14,tag=m_12,tag=m_25,tag=m_22,tag=m_8,tag=m_18,tag=m_19,tag=m_30,tag=m_28,tag=m_29,tag=m_26,tag=m_27] only advancements:milestone_every

# Sets game state to 0
scoreboard players set $game state 0

# Reset worldborder
worldborder set 59999968

#tag @a[team=spectator] add playing

title @a[tag=playing] times 0 25 5

# Resets players
effect clear @a[tag=playing,tag=!tutorial]
gamemode adventure @a[tag=playing]
clear @a[tag=playing,tag=!tutorial]
tp @a[tag=playing,tag=!tutorial] -11.0 68 46.0 -148 -18
spawnpoint @a[tag=playing] -11 68 46 -148
scoreboard players reset @a freeze_time
setblock -4 68 38 minecraft:stone_button[face=wall,facing=south,powered=false]
execute as @a[gamemode=spectator,tag=spectating] at @s run function general:join_game
scoreboard players reset * stop_spectating

# Resetting the dropped knowledge book objective.
scoreboard players reset @a[tag=playing,tag=!tutorial] drop_ready_book

# healing players
effect give @a[tag=playing] regeneration 1 255 true

# Scores
team join lobby @a[tag=playing,tag=!tutorial]
tellraw @a[tag=!playing] ["",{"text":"- ","color":"gray"},{"translate":"The game has ended.","color":"green"}]
tellraw @a[tag=tutorial] ["",{"text":"- ","color":"gray"},{"translate":"The game has ended.","color":"green"}]
execute unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial] ["",{"text":"- ","color":"gray"},{"translate":"Game over!","color":"green","bold":true}]
execute if score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial] ["",{"text":"- ","color":"gray"},{"translate":"NO CONTEST","color":"gray","bold":true}]

execute if score $mode settings matches 1 unless score $no_contest state matches 1 if score $score game > $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Spoons","color":"aqua","bold":true},{"text":" (","color":"gray"},{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,tag=!team_2]","color":"blue"},{"text":")","color":"gray"},{"translate":" win!","color":"gold"}]
execute if score $mode settings matches 1 unless score $no_contest state matches 1 if score $score game < $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Forks","color":"light_purple","bold":true},{"text":" (","color":"gray"},{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,tag=team_2]","color":"red"},{"text":")","color":"gray"},{"translate":" win!","color":"gold"}]
execute if score $mode settings matches 1 unless score $no_contest state matches 1 if score $score game = $score_2 game run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"It's a tie!","color":"gold"}]
execute if score $mode settings matches 0 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score"},"color":"gold","bold":true}]
execute if score $mode settings matches 0 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes"},"color":"gold","bold":true}]

execute if score $mode settings matches 1 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial,tag=!team_2] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial,tag=!team_2] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes_1"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial,tag=team_2] ["",{"text":"- ","color":"gray"},{"translate":"Score: ","color":"green"},{"score":{"objective":"game","name":"$score_2"},"color":"gold","bold":true}]
execute if score $mode settings matches 1 unless score $no_contest state matches 1 run tellraw @a[tag=playing,tag=!tutorial,tag=team_2] ["",{"text":"- ","color":"gray"},{"translate":"Completed Recipes: ","color":"green"},{"score":{"objective":"game","name":"$finished_recipes_2"},"color":"gold","bold":true}]

execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $winner shuffle matches 1 run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Spoons","color":"aqua","bold":true},{"text":" (","color":"gray"},{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,tag=!team_2]","color":"blue"},{"text":")","color":"gray"},{"translate":" win!","color":"gold"}]
execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $winner shuffle matches 1 run advancement grant @a[gamemode=adventure,tag=playing,tag=!tutorial,tag=!team_2] only advancements:milestone_shuffle
execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $winner shuffle matches 2 run tellraw @a ["",{"text":"+ ","color":"gray"},{"translate":"The Forks","color":"light_purple","bold":true},{"text":" (","color":"gray"},{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,tag=team_2]","color":"red"},{"text":")","color":"gray"},{"translate":" win!","color":"gold"}]
execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $winner shuffle matches 2 run advancement grant @a[gamemode=adventure,tag=playing,tag=!tutorial,tag=team_2] only advancements:milestone_shuffle
execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $timer game_seconds matches 10.. run tellraw @a ["",{"text":"- ","color":"gray"},{"translate":"Time: ","color":"green"},{"score":{"objective":"game_minutes","name":"$timer"},"color":"gold","bold":true},{"text":":","color":"gold","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"gold","bold":true}]
execute if score $mode settings matches 2 unless score $no_contest state matches 1 if score $timer game_seconds matches ..9 run tellraw @a ["",{"text":"- ","color":"gray"},{"translate":"Time: ","color":"green"},{"score":{"objective":"game_minutes","name":"$timer"},"color":"gold","bold":true},{"text":":0","color":"gold","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"gold","bold":true}]

# Competitive
execute if score $mode settings matches 3 run tellraw @a ["",{"translate":"Kitchen: ","color":"aqua"},{"selector":"@e[type=area_effect_cloud,tag=map_name,limit=1]","color":"blue"}]
execute if score $mode settings matches 3 unless score $no_contest state matches 1 if score $timer game_seconds matches 10.. if score $decaseconds game_ticks matches 10.. run tellraw @a ["",{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]","color":"green"},{"translate":"'s ","color":"green"},{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
execute if score $mode settings matches 3 unless score $no_contest state matches 1 if score $timer game_seconds matches 10.. if score $decaseconds game_ticks matches ..9 run tellraw @a ["",{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]","color":"green"},{"translate":"'s ","color":"green"},{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
execute if score $mode settings matches 3 unless score $no_contest state matches 1 if score $timer game_seconds matches ..9 if score $decaseconds game_ticks matches 10.. run tellraw @a ["",{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]","color":"green"},{"translate":"'s ","color":"green"},{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
execute if score $mode settings matches 3 unless score $no_contest state matches 1 if score $timer game_seconds matches ..9 if score $decaseconds game_ticks matches ..9 run tellraw @a ["",{"selector":"@a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]","color":"green"},{"translate":"'s ","color":"green"},{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
execute if score $mode settings matches 3 unless score $no_contest state matches 1 as @a[gamemode=adventure,tag=playing,limit=1] at @s run function game:mode_competitive/best_times

# Reset teams
execute as @a[tag=playing,tag=!tutorial] at @s run function general:rank

# Resets timer
scoreboard players set $timer game_ticks 0
bossbar set game:timer visible false
bossbar set game:progress_1 visible false
bossbar set game:progress_2 visible false

# Removing tags
tag @a[tag=playing,tag=!tutorial] remove mechanics
tag @a[tag=playing,tag=!tutorial] remove playing
tag @a remove team_2

scoreboard objectives setdisplay sidebar

forceload remove all

xp set @a 0 levels
xp set @a 0 points

scoreboard players reset * end
scoreboard players reset * restart
scoreboard players reset $no_contest state