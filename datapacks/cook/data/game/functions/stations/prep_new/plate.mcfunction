# Place down a plate
setblock ~ ~ ~ oak_pressure_plate[powered=true]
data merge entity @e[type=villager,tag=customer,sort=nearest,limit=1,distance=..100] {HandItems:[{},{}]}
tag @s remove place_plate