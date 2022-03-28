playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0 1
effect give @s blindness 2 128 true

scoreboard players set @s ingredient 51
advancement grant @s only game:inventory_changed