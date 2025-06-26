# Called whenever a player joins the game

# Basic functions
tag @s add joined
function general:reset_player

# If we haven't been reset
execute unless entity @s[tag=data_reset] run function general:reset_data

# Rank
function general:ranks