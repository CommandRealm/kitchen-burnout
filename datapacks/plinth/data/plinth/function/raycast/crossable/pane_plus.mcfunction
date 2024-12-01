# Now we check to see if a branch of the pane is in the way of the raycast.
tag @s add continue
execute if block ~ ~ ~ #plinth:panes[south=true] if score @s position2 matches 10.. if score @s position matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #plinth:panes[east=true] if score @s position matches 10.. if score @s position2 matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #plinth:panes[north=true] if score @s position2 matches ..7 if score @s position matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #plinth:panes[west=true] if score @s position matches ..7 if score @s position2 matches 8..9 run tag @s remove continue
execute if score @s position matches 8..9 if score @s position2 matches 8..9 run tag @s remove continue
