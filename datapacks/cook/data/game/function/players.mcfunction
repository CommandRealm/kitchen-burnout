# Called as all players

# Check if the player should be holding a tool
execute anchored eyes run function game:inventory/tools/check_for_needed_tool

# Check if the player is interacting with a station
execute as @s[tag=cutting] anchored eyes run function game:stations/cutting_board/using
execute anchored eyes positioned ^ ^ ^1.75 if entity @n[type=#game:prep,tag=prep,distance=..0.75] run tag @n[type=interaction,tag=prep_base,distance=..20] add someone_is_looking