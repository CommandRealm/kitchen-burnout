# Called as needed to refresh the positions of the prep ingredients for a prep station.
function game:stations/prep/ingredient/positioning/new_epoch
execute align xyz positioned ~ -64 ~ run kill @e[type=interaction,tag=prep_ingredient,dx=0,dy=384,dz=0]
function game:stations/prep/start_expanding