# Remove advancement
advancement revoke @s only game:arrow_hit_player
# Clear ingredient
scoreboard players set @s ingredient 0
advancement grant @s only game:inventory_changed
# Effects
tp @s 1463.0 110 1014 0 0
playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ .5 .7
effect give @s slowness 3 255 true
effect give @s jump_boost 3 128 true
effect give @s blindness 2 128 true