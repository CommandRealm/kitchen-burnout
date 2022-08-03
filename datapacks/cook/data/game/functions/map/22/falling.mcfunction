effect give @s blindness 2 1 true
effect give @s slowness 3 3 true
scoreboard players set @s ingredient 0
clear @s
advancement grant @s only game:inventory_changed
advancement grant @s only advancements:general_hazard
tp @s[tag=!team_2] 3186 90 499 90 5
tp @s[tag=team_2] 13186 90 499 90 5