scoreboard players set $mod random 4
function random:random
execute if score $output random matches 0..2 run function lobby:cosmetics/bell_sounds/epic
execute if score $output random matches 3 run function lobby:cosmetics/bell_sounds/legendary