# Called by a stovetop every second to update its cooking indicator
scoreboard players operation $cooking_display station_timer = @s station_timer

execute as @s[tag=hamburger_timer] as @n[type=text_display,tag=stovetop,distance=..0.5] run function game:stations/stovetop/timer/hamburger
execute as @s[tag=beef_taco_timer] as @n[type=text_display,tag=stovetop,distance=..0.5] run function game:stations/stovetop/timer/beef_taco
execute as @s[tag=scorched_food_timer] as @n[type=text_display,tag=stovetop,distance=..0.5] run function game:stations/stovetop/timer/scorched_food