kill @e[tag=die_between_games,tag=ingredient_box,distance=..1]
scoreboard players set $new_box ingredient 12
data modify storage game:new_ingredient_box ingredient set value "rice"
setblock 0 -60 0 chest
loot replace block 0 -60 0 container.0 loot game:food/sushi/rice

execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function game:stations/ingredient_box/_init_self