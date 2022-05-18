function game:map/8/teleport

advancement revoke @a only game:arrow_hit_player
scoreboard players set $timer arrow_cycle 0

schedule function game:map/8/ingredient_setup 1s