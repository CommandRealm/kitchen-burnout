scoreboard players set $timer game_ticks 0
bossbar set game:progress_1 players @a[tag=playing,tag=!tutorial,tag=!team_2]
bossbar set game:progress_2 players @a[tag=playing,tag=!tutorial,tag=team_2]
bossbar set game:progress_1 color blue
bossbar set game:progress_2 color red
bossbar set game:progress_1 visible true
bossbar set game:progress_2 visible true
bossbar set game:progress_1 max 4
bossbar set game:progress_2 max 4