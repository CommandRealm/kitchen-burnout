# Called as all players

# Check if the player should be holding a tool
execute anchored eyes run function game:inventory/tools/check_tools

# Check if the player is interacting with a station
execute as @s[tag=cutting_mode] run function game:stations/cutting_board/mode/in
execute anchored eyes positioned ^ ^ ^1.75 at @n[type=interaction,tag=prep,distance=..0.75] align xyz positioned ~ -64 ~ run tag @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] add someone_is_looking