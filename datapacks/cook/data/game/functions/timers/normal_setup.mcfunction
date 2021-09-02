scoreboard players operation $timer game_ticks = $mode_0_time settings
bossbar set game:timer players @a[tag=playing]
bossbar set game:timer color red
bossbar set game:timer visible true
execute store result bossbar game:timer max run scoreboard players get $timer game_ticks