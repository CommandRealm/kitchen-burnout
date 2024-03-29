# called whenever a player joins the game

# Basic functions
tp @s -11.0 68 46.0 -148 -18
spawnpoint @s -11 68 46 -148
scoreboard players set @s has_joined 1
scoreboard players reset @s stop_spectating
clear @s
gamemode adventure @s
title @s times 0 25 5
effect clear @s
execute if score $mode settings matches 3 unless entity @a[gamemode=adventure,scores={ready=1..}] unless entity @a[gamemode=adventure,tag=playing,tag=!tutorial] run scoreboard players set @s[tag=!spectating] ready 1
execute unless score $mode settings matches 3 run scoreboard players set @s[tag=!spectating] ready 1

# Remove tags
tag @s remove playing
tag @s remove in_pipe
tag @s remove team_2
tag @s remove admin
tag @s remove spectating
tag @s remove lobby_team_1
tag @s remove lobby_team_2
tag @s remove show_bossbar

execute unless score $mode settings matches 2 run bossbar set game:timer players @a[tag=show_bossbar]
execute if score $mode settings matches 2 run bossbar set game:progress_1 players @a[tag=playing,tag=!tutorial,tag=!team_2]
execute if score $mode settings matches 2 run bossbar set game:progress_2 players @a[tag=playing,tag=!tutorial,tag=team_2]

# effect
effect give @s instant_health 1 5 true



# if we haven't been reset
execute unless entity @s[scores={has_reset=1..}] run function general:reset

# Rank
function general:rank


xp set @s 0 levels
xp set @s 0 points

