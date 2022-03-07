execute as @e[type=marker,tag=ice_bridge_button] at @s unless blocks ~ ~ ~ ~ ~ ~ ~ -63 ~ all run function game:map/26/button/push

setblock 3476 72 -4 minecraft:dark_oak_button[face=wall,facing=south,powered=false]
setblock 3480 72 0 minecraft:dark_oak_button[face=wall,facing=west,powered=false]
setblock 3476 72 4 minecraft:dark_oak_button[face=wall,facing=north,powered=false]
setblock 3472 72 0 minecraft:dark_oak_button[face=wall,facing=east,powered=false]

setblock 3459 72 0 minecraft:dark_oak_button[face=wall,facing=west,powered=false]
setblock 3476 72 -17 minecraft:dark_oak_button[face=wall,facing=north,powered=false]
setblock 3493 72 0 minecraft:dark_oak_button[face=wall,facing=east,powered=false]
setblock 3476 72 17 minecraft:dark_oak_button[face=wall,facing=south,powered=false]