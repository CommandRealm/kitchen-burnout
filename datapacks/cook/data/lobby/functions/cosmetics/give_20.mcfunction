# 20% chance to get a cosmetic
scoreboard players set $mod random 10
function random:random
execute if score $output random matches ..1 run function lobby:cosmetics/give_cosmetic