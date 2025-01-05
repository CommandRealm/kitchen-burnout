# Called when food transforms into scorched food on a stovetop
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.25
particle smoke ~ ~ ~ 0.05 0.1 0.05 0.025 1
tag @s remove cooking
tag @s remove scorched_food_timer
kill @n[type=text_display,tag=stovetop,distance=..0.5]