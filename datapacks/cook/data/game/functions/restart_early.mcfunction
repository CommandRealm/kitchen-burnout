#> game:restart_early Quick Restart for Competitive Mode
# Resets ingredient boxes back to their normal blocks
execute as @e[type=marker,tag=reset_boxes,tag=!tutorial] at @s run function game:map/reset_boxes

# Reset ice blocks
execute as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice

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

# Actually Restart
function game:start