# Called as all players

# Check if the player is holding a tool
execute anchored eyes run function game:inventory/tools/check_for_needed_tool

# Check if the player is interacting with a station
execute as @s[tag=cutting] anchored eyes run function game:stations/cutting_board/using