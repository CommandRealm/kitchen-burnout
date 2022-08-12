scoreboard players set $mod random 5
function random:random
execute if score $output random matches 0..2 run function lobby:cosmetics/knives/epic
execute if score $output random matches 3..4 run function lobby:cosmetics/knives/legendary