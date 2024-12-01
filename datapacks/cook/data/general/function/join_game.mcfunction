# Called whenever a player joins the game

# Basic functions
scoreboard players set @s has_joined 1
function general:reset_player

# If we haven't been reset
execute unless entity @s[scores={has_reset_data=1..}] run function general:reset_data

# Rank
function general:ranks