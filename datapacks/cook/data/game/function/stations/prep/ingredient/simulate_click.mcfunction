# Called by a prep station ingredient that was attacked by a player already holding an ingredient
data modify entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] interaction set from entity @s attack
execute as @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] at @s run function game:stations/prep/click
data remove entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] interaction