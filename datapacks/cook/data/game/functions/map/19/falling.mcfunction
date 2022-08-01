effect give @s blindness 2 1 true
effect give @s slowness 2 3 true
scoreboard players set @s ingredient 0
clear @s
advancement grant @s only game:inventory_changed
tp @s[tag=!team_2] 2525 103 1506 180 -5
tp @s[tag=team_2] 12525 103 1506 180 -5