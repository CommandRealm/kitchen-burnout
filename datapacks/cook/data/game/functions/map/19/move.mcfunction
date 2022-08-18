execute positioned ~ ~10 ~ run particle flame ^-1 ^ ^2 2 2 2 .1 5 force
#execute positioned ~ ~10 ~ run fill ~-5 ~ ~-5 ~5 ~ ~5 air replace light[level=15]
tp @s ^ ^ ^2
#execute positioned ~ ~10 ~ run fill ~-5 ~ ~-5 ~5 ~ ~5 air replace light[level=15]
execute store success score @s calculate positioned ~ ~10 ~ run fill ~-5 ~ ~-5 ~5 ~ ~5 structure_void replace white_stained_glass
execute if score @s calculate matches 1.. run playsound block.glass.break master @a ~ ~ ~ 5 0
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.3
#execute positioned ~ ~10 ~ run fill ^ ^ ^2 ^ ^ ^2 light[level=15] replace air
execute positioned ^ ^ ^-10 if entity @e[type=marker,tag=danger_zone,tag=!triggered,distance=..2] positioned ^ ^ ^10 run tp @s ~ -10000 ~
execute positioned ^ ^ ^-10 if entity @e[type=marker,tag=danger_zone,tag=!triggered,distance=..2] positioned ^ ^ ^10 run kill @s
execute positioned ^ ^ ^-10 run tag @e[type=marker,tag=danger_zone,distance=..2,limit=1,sort=nearest,tag=!triggered] add triggered