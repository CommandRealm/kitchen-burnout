# Called as all players

# Check if the player should be holding a tool
execute anchored eyes run function game:inventory/tools/check_for_needed_tool

# Check if the player is interacting with a station
execute as @s[tag=cutting] anchored eyes run function game:stations/cutting_board/using
execute anchored eyes positioned ^ ^ ^1.75 at @n[type=interaction,tag=prep,distance=..0.75] align xyz positioned ~0.5 ~ ~0.5 run particle flame ~ ~ ~ 0 2 0 0 10 force
execute anchored eyes positioned ^ ^ ^1.75 at @n[type=interaction,tag=prep,distance=..0.75] align xyz positioned ~0.5 ~ ~0.5 run tag @n[type=interaction,tag=prep_base,dx=0,dy=255,dz=0] add someone_is_looking