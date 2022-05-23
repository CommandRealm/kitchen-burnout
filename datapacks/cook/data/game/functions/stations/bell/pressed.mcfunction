tag @s add bell_pressed
item replace entity @s weapon.mainhand with spruce_button{CustomModelData:2}
tag @e[type=marker,tag=prep_display,distance=..10,sort=nearest,limit=1] add check_to_serve
scoreboard players set @e[type=marker,tag=prep_display,distance=..10,sort=nearest,limit=1] prep_display -1
execute if block ~ ~ ~ spruce_button[powered=true,face=floor,facing=south] run setblock ~ ~ ~ spruce_button[powered=false,face=floor,facing=south]
execute if block ~ ~ ~ spruce_button[powered=true,face=floor,facing=north] run setblock ~ ~ ~ spruce_button[powered=false,face=floor,facing=north]
execute if block ~ ~ ~ spruce_button[powered=true,face=floor,facing=east] run setblock ~ ~ ~ spruce_button[powered=false,face=floor,facing=east]
execute if block ~ ~ ~ spruce_button[powered=true,face=floor,facing=west] run setblock ~ ~ ~ spruce_button[powered=false,face=floor,facing=west]