#> Takes in an ingredient name (id) and creates an ingredient box.
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=ingredient_box,distance=..0.5]

$execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function game:stations/ingredient_box/setup_interaction {id:$(id)}