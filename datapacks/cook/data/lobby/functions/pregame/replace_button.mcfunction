# Called to replace the button

setblock -4 68 38 minecraft:stone_button[face=wall,facing=south,powered=false]
particle item stone -4 68.5 38 0.1 0.1 0.1 0.15 5
playsound block.stone.place block @a -4 68 38 1 1
scoreboard players reset $button pregame