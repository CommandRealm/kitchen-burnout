execute unless entity @s[tag=bell_pressed] run function game:stations/bell/sound
execute unless entity @s[tag=bell_pressed] if entity @e[type=armor_stand,tag=prep_slot,distance=..100] run tag @e[type=marker,tag=prep_display,distance=..100,sort=nearest,limit=1,scores={prep_display=0..}] add check_to_serve
execute unless entity @s[tag=bell_pressed] if entity @e[type=armor_stand,tag=prep_slot,distance=..100] run scoreboard players set @e[type=marker,tag=prep_display,distance=..100,sort=nearest,limit=1,scores={prep_display=0..}] prep_display -1
tag @s add bell_pressed
item replace entity @s weapon.mainhand with spruce_button{CustomModelData:2}