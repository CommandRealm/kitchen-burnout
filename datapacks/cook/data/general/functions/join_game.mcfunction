# called whenever a player joins the game

# Basic functions
tp @s 0 66 0
spawnpoint @s 0 66 0 
scoreboard players set @s has_joined 1
clear @s
gamemode adventure @s
title @s times 0 25 5
effect clear @s
scoreboard players set @s ready 1

# Remove tags
tag @s remove playing

# effect
effect give @s instant_health 1 5 true



# if we haven't been reset
execute unless entity @s[scores={resetting=1..}] run function general:reset

# Rank
function general:rank


xp set @s 0 levels
xp set @s 0 points

