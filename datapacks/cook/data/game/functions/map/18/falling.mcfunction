effect give @s blindness 2 1 true
effect give @s slowness 3 3 true
scoreboard players set @s ingredient 0
clear @s
advancement grant @s only game:inventory_changed
advancement grant @s only advancements:general_hazard
tp @s[tag=!team_2] 2654 74 996 -90 5
tp @s[tag=team_2] 12654 74 996 -90 5