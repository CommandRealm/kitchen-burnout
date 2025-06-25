#> Takes in an ingredient name (id) and creates an ingredient box.
# Have to use a distance check instead of dx/dy/dz because the interaction entity needs to be bigger than 1 block.
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=ingredient_box,distance=..0.5]

$execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function game:stations/ingredient_box/setup_interaction {id:$(id)}