kill @e[tag=die_between_games,distance=..1]
scoreboard players set $new_box ingredient 42
data modify storage game:new_ingredient_box ingredient set value "chocolate"
loot replace block 0 -60 0 container.0 loot game:food/ice_cream/chocolate

execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function game:stations/ingredient_box/_init_self