effect give @s blindness 2 1 true
effect give @s slowness 3 3 true
scoreboard players set @s ingredient 0
clear @s
advancement grant @s only game:inventory_changed
tp @s 2503.0 67 521.0 90 2
playsound block.fire.extinguish master @s ~ ~ ~ 10 1.5