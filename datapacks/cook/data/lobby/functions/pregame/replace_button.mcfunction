##Called to replace the button

setblock -9 17 -10 minecraft:stone_button[face=wall,facing=east,powered=false]
particle item stone -9 17.5 -10 0.1 0.1 0.1 0.15 5
playsound block.stone.place block @a -9 17 -10 1 1
scoreboard players reset $button pregame