schedule clear options:teams/launch_blocks
execute as @e[type=falling_block,tag=team_platform] at @s run particle poof ~ ~ ~ 0 0 0 .01 1 force
execute as @e[type=falling_block,tag=team_platform] at @s run playsound minecraft:entity.snow_golem.hurt master @a ~ ~ ~ .5 1
kill @e[type=falling_block,tag=team_platform]
fill 8 66 36 8 67 36 air
execute store success score $success settings run fill 6 66 38 10 66 37 air
clone 6 -62 37 10 -62 38 6 65 37
setblock 8 65 36 minecraft:polished_andesite
execute if score $success settings matches 1.. run playsound block.glass.break master @a 6 66 38 1 .5
execute if score $success settings matches 1.. run playsound block.glass.break master @a 6 66 38 1 1.3
execute if score $success settings matches 1.. run particle poof 8.5 66 38.0 2 .25 .6 .05 10 force
scoreboard players reset $success settings