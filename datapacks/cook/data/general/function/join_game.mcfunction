# Called whenever a player joins the game

# Basic functions
tag @s add has_joined
function general:reset_player

# If we haven't been reset
execute unless entity @s[tag=has_reset_data] run function general:reset_data

# Rank
function general:ranks