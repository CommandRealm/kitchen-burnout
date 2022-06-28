# Give ingredients if target is hit
execute positioned 1492 66 1496 as @e[type=arrow,distance=..500] at @s if data entity @s inBlockState{Name:"minecraft:target"} if score @s archery matches 3.. run function game:map/9/hit

# Kill arrows that miss
execute positioned 1492 66 1496 run tag @e[type=arrow,distance=..500] add die_between_games
execute positioned 1492 66 1496 run scoreboard players add @e[type=arrow,tag=die_between_games,distance=..500] archery 1
execute positioned 1492 66 1496 run kill @e[type=arrow,tag=die_between_games,distance=..500,scores={archery=120..}]

# Stealthiators lobby minigame reference :eyes:
execute if score $bullseye archery matches 1.. run function game:map/9/bullseye