# Now we check to see if a branch of the wall is in the way of the raycast.
tag @s add continue
execute if block ~ ~ ~ #minecraft:walls[south=low] if score @s position2 matches 13.. if score @s position matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[east=low] if score @s position matches 13.. if score @s position2 matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[north=low] if score @s position2 matches ..4 if score @s position matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[west=low] if score @s position matches ..4 if score @s position2 matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[south=tall] if score @s position2 matches 13.. if score @s position matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[east=tall] if score @s position matches 13.. if score @s position2 matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[north=tall] if score @s position2 matches ..4 if score @s position matches 5..12 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:walls[west=tall] if score @s position matches ..4 if score @s position2 matches 5..12 run tag @s remove continue
execute if score @s position matches 5..12 if score @s position2 matches 5..12 run tag @s remove continue