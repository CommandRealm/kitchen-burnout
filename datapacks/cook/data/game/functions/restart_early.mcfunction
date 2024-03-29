#> game:restart_early Quick Restart for Competitive Mode
# Resets ingredient boxes back to their normal blocks
execute as @e[type=#game:reset_boxes,tag=reset_boxes,tag=!tutorial] at @s run function game:map/reset_boxes

# Reset ice blocks
execute as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute as @e[type=marker,tag=danger_zone] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace fire
fill 2538 104 1521 2510 124 1478 white_stained_glass replace minecraft:structure_void
fill 12538 104 1521 12510 124 1478 white_stained_glass replace minecraft:structure_void

# Removes all entities that should die between games (most of them)
tp @e[tag=die_between_games] 0 -10000 0
kill @e[tag=die_between_games]

# Resets timer
scoreboard players set $timer game_ticks 0
bossbar set game:timer visible false
bossbar set game:progress_1 visible false
bossbar set game:progress_2 visible false

# Reset worldborder
worldborder set 59999968

# Scores 'n stuff
effect clear @a[gamemode=adventure,tag=playing]
clear @a[gamemode=adventure,tag=playing,tag=!tutorial]
scoreboard players reset @a[gamemode=adventure,tag=playing] freeze_time
scoreboard players reset * end
scoreboard players reset * restart

execute as @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1] at @s run tag @s add restart_early_tag
scoreboard players set @a[tag=!restart_early_tag] ready -1000
# Actually Restart
function game:start
scoreboard players set @a[tag=!restart_early_tag,scores={ready=..-10}] ready 1
tag @a remove restart_early_tag