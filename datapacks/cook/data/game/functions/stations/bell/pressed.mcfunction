tag @s add bell_pressed
item replace entity @s weapon.mainhand with player_head{CustomModelData:4}
scoreboard players set @e[type=marker,tag=prep_display,distance=..10,sort=nearest,limit=1] prep_display -1