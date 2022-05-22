# Slide
scoreboard players operation @s sliding_platform += @s sliding_dir
execute if score @s sliding_platform matches 100.. as @e[type=#game:sliding_platform,tag=sliding_platform,distance=..5] at @s run tp @s ~.25 ~ ~
execute if score @s sliding_platform matches ..-100 as @e[type=#game:sliding_platform,tag=sliding_platform,distance=..5] at @s run tp @s ~-.25 ~ ~

# Sound
execute unless score @s sliding_platform matches -99..99 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 1.25
execute if score @s sliding_platform matches -99..99 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.75 0.5

# Change dir
execute if score @s[tag=!short_platform] sliding_platform matches 163.. if score @s sliding_dir matches 1 run function game:map/22/change_dir
execute if score @s[tag=!short_platform] sliding_platform matches ..-163 if score @s sliding_dir matches -1 run function game:map/22/change_dir
execute if score @s[tag=short_platform] sliding_platform matches 143.. if score @s sliding_dir matches 1 run function game:map/22/change_dir
execute if score @s[tag=short_platform] sliding_platform matches ..-143 if score @s sliding_dir matches -1 run function game:map/22/change_dir