scoreboard players set $mod random 4
function random:random
execute if score $output random matches 3 unless score $success random matches 1.. run function lobby:cosmetics/bell_sounds/legendary
execute if score $output random matches 0..2 unless score $success random matches 1.. run function lobby:cosmetics/bell_sounds/epic