kill @e[tag=die_between_games,distance=..1]
scoreboard players set $new_box ingredient 32
data modify storage game:new_ingredient_box ingredient set value "raw_beef"
data modify storage game:new_ingredient_box becomes set value "beef"
loot replace block 0 -60 0 container.0 loot game:food/tacos/raw_beef

execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function game:stations/ingredient_box/_init_self