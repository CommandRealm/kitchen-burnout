# Called when a prep station ingredient is clicked on, should forward the interaction to the prep_station
execute align xyz positioned ~ -64 ~ run data modify entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] interaction set from entity @s interaction
data remove entity @s interaction