# Called by an ingredient box that has been clicked on by a player
scoreboard players operation $assign ingredient = @s ingredient
execute on target as @s[gamemode=adventure,tag=playing] at @s run function game:inventory/assign/ingredient
data remove entity @s interaction