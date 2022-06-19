tag @e[type=villager,tag=customer,sort=nearest,distance=..100,limit=1] add kill_customer
tag @e[type=magma_cube,tag=customer,sort=nearest,distance=..100,limit=1] add kill_customer
execute at @e[type=villager,tag=customer,tag=kill_customer] run particle totem_of_undying ~ ~1 ~ .1 .75 .1 1 20 force
tp @e[type=#game:customer,tag=customer,tag=kill_customer] ~ ~-1000 ~
kill @e[type=#game:customer,tag=customer,tag=kill_customer]
kill @e[type=#game:customer,tag=customer,tag=kill_customer]
kill @e[type=#game:customer,tag=customer,tag=kill_customer]
tag @e[type=villager,tag=customer,tag=!kill_customer,sort=nearest,limit=1,distance=..100] add update_line_first
tag @e[type=villager,tag=customer,tag=update_line_first,tag=!kill_customer,sort=nearest,limit=1,distance=..100] add update_line_pos