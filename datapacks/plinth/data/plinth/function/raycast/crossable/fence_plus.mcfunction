# Now we check to see if a branch of the fence is in the way of the raycast.
tag @s add continue
execute if block ~ ~ ~ #minecraft:fences[south=true] if score @s position2 matches 11.. if score @s position matches 7..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[east=true] if score @s position matches 11.. if score @s position2 matches 7..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[north=true] if score @s position2 matches ..6 if score @s position matches 7..10 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fences[west=true] if score @s position matches ..6 if score @s position2 matches 7..10 run tag @s remove continue
execute if score @s position matches 7..10 if score @s position2 matches 7..10 run tag @s remove continue