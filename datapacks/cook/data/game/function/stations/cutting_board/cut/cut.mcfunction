# Called by a cutting board with a cuttable ingredient on it when a player tries to cut it
# Make pufferfish poison on failed cut
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.25

# Bad cut (+/- 7 to 10)
execute unless score @s station_timer matches -6..6 run return run function game:stations/cutting_board/cut/bad

# Okay cut (+/- 4 to 6)
execute unless score @s station_timer matches -3..3 run return run scoreboard players remove @s station 2
# Good cut (+/- 2 to 3)
execute unless score @s station_timer matches -1..1 run return run scoreboard players remove @s station 3
# Perfect cut (+/- 0 to 1)
scoreboard players remove @s station 8
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.594604
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.749154
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.890899
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.189207
particle dust{color:[0.925, 0.835, 0.416],scale:1} ~ ~0.1 ~ 0.2 0.05 0.2 0.15 5 force @a
particle dust{color:[1.0, 0.816, 0.0],scale:1} ~ ~0.1 ~ 0.2 0.05 0.2 0.15 5 force @a
particle dust{color:[0.925, 0.745, 0.416],scale: 1} ~ ~0.1 ~ 0.2 0.05 0.2 0.15 5 force @a