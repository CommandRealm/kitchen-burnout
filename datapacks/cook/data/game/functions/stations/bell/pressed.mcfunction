execute unless entity @s[tag=bell_pressed] run function game:stations/bell/sound
tag @s add bell_pressed
item replace entity @s weapon.mainhand with spruce_button{CustomModelData:2}
tag @e[type=marker,tag=prep_display,distance=..10,sort=nearest,limit=1] add check_to_serve
scoreboard players set @e[type=marker,tag=prep_display,distance=..10,sort=nearest,limit=1] prep_display -1