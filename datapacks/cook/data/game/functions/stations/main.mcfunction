##Called when a station has something going on.
execute if entity @e[type=area_effect_cloud,tag=cutting_board,scores={station=1..}] run function game:stations/cutting_board/main

execute if entity @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] run function game:stations/stovetop/main

##Additional timer if one is required.
scoreboard players add @e[type=area_effect_cloud,scores={station=1..}] station_timer 1