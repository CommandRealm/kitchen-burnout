# 60% chance to get a cosmetic
scoreboard players reset $success random
scoreboard players set $mod random 10
function random:random
execute if score $output random matches ..5 run function lobby:cosmetics/give_cosmetic