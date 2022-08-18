scoreboard players set $mod random 5
function random:random
execute if score $output random matches 3..4 unless score $success random matches 1.. run function lobby:cosmetics/knives/legendary
execute if score $output random matches 0..2 unless score $success random matches 1.. run function lobby:cosmetics/knives/epic