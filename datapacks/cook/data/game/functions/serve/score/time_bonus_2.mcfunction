scoreboard players operation @s recipe_timer /= $8 number
scoreboard players set $time_bonus game 10
scoreboard players operation $time_bonus game -= @s recipe_timer
execute if score $time_bonus game matches 1.. run scoreboard players operation $score_2 game += $time_bonus game
execute if score $time_bonus game matches 1.. run scoreboard players operation $recipe_score game += $time_bonus game
execute if score $time_bonus game matches 1.. run tellraw @a[tag=playing,gamemode=adventure,tag=team_2] ["",{"text":"\uFF0B","color":"green"},{"color":"green","score":{"objective":"game","name":"$recipe_score"}},{"text":" [","color":"yellow"},{"color":"yellow","score":{"objective":"game","name":"$time_bonus"}},{"text":"\u231A]","color":"yellow"},{"translate":" Points!","color":"gold"}]
execute unless score $time_bonus game matches 1.. run tellraw @a[tag=playing,gamemode=adventure,tag=team_2] ["",{"text":"\uFF0B","color":"green"},{"color":"green","score":{"objective":"game","name":"$recipe_score"}},{"translate":" Points!","color":"gold"}]