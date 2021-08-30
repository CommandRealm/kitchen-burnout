##Clearing previous statioxns
kill @e[tag=die_between_games]
execute if entity @a[tag=playing,scores={map=1}] run function game:map/1/stations