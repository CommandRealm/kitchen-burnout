# Called when we try to cut an item on the cutting board

# Make pufferfish poison on failed cut
execute as @e[type=marker,tag=cutting_board,sort=nearest,limit=1] at @s if score @s station_timer matches -11..-7 if entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item,scores={ingredient=14}] run function game:stations/cutting_board/poison_pufferfish
execute as @e[type=marker,tag=cutting_board,sort=nearest,limit=1] at @s if score @s station_timer matches 7..11 if entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item,scores={ingredient=14}] run function game:stations/cutting_board/poison_pufferfish

# Normal cutting
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -10..-7 run scoreboard players add @s click_cooldown 3
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -10..-7 run scoreboard players add @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 5
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -5..-4 run scoreboard players remove @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 2
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -3..-2 run scoreboard players remove @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 3
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 run scoreboard players remove @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 8
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.594604
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.749154
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.890899
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.189207
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @e[type=marker,tag=cutting_board,sort=nearest,limit=1] run particle dust 0.925 0.835 0.416 1 ~ ~1 ~ 1 1 1 0.15 20 force @s
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @e[type=marker,tag=cutting_board,sort=nearest,limit=1] run particle dust 1 0.816 0 1 ~ ~1 ~ 1 1 1 0.15 20 force @s
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches -1..1 at @e[type=marker,tag=cutting_board,sort=nearest,limit=1] run particle dust 0.925 0.745 0.416 1 ~ ~1 ~ 1 1 1 0.15 20 force @s
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches 2..3 run scoreboard players remove @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 3
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches 4..5 run scoreboard players remove @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 2
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches 7..10 run scoreboard players add @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station 5
execute if score @e[type=marker,tag=cutting_board,sort=nearest,limit=1] station_timer matches 7..10 run scoreboard players add @s click_cooldown 3

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.25


execute as @e[type=marker,tag=cutting_board,sort=nearest,limit=1,scores={station=..0}] run function game:stations/cutting_board/finished_item