# Called when a player poisons a pufferfish on a cutting board
tag @s remove cuttable
function game:stations/cutting_board/cutting/stop

data merge storage game:stations/place {entity:"@n[type=item_display,tag=station,distance=..0.5]", \
    slot:"container.0", id:"poison_pufferfish"}
function game:inventory/get_ingredient with storage game:stations/place

playsound entity.squid.death master @a ~ ~ ~ 1 1.7
particle dust{color:[0.0, 0.753, 0.188],scale:1} ~ ~.5 ~ .2 .2 .2 1 20
