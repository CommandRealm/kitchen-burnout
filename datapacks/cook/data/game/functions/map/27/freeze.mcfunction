tp @s[tag=!team_2] 3501 68 499 0 -5
tp @s[tag=team_2] 13501 68 499 0 -5
playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0 1
effect give @s slowness 5 255 true
effect give @s jump_boost 5 128 true
effect give @s blindness 4 128 true

execute unless score @s ingredient matches 0 run scoreboard players set @s ingredient 51
advancement grant @s only game:inventory_changed