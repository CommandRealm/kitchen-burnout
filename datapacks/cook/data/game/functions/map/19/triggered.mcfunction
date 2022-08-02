scoreboard players add @s game_ticks 1
execute if score @s game_ticks matches 1 run summon creeper ~ ~1 ~ {Fuse:0,ExplosionRadius:3}
execute if score @s game_ticks matches 1 run particle explosion ~ ~1 ~ 1 1 1 1 2 force
execute if score @s game_ticks matches 1 run particle flame ~ ~1 ~ 1 1 1 1 20 force
execute if score @s game_ticks matches 1 run playsound item.firecharge.use master @a ~ ~ ~ 1 0
execute if score @s game_ticks matches 1 run fill ~-2 ~ ~-2 ~2 ~ ~2 fire replace air
execute if score @s game_ticks matches 80.. run tag @s add temporary_tag
execute if score @s game_ticks matches 80.. unless entity @e[type=marker,tag=danger_zone,tag=triggered,distance=..1,tag=!temporary_tag] run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace fire
execute if score @s game_ticks matches 80.. unless entity @e[type=marker,tag=danger_zone,tag=triggered,distance=..1,tag=!temporary_tag] run playsound block.fire.extinguish master @a ~ ~ ~ .2 2
execute if score @s game_ticks matches 80.. run kill @s