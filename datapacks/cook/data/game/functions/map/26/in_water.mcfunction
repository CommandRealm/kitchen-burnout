# Freeze ingredient
execute unless score @s ingredient matches 0 run scoreboard players set @s ingredient 51
advancement grant @s only game:inventory_changed

# Sound
playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 1 0 .1
playsound entity.player.splash master @a ~ ~ ~ 2 0

# Effect
effect give @s blindness 2 255 true