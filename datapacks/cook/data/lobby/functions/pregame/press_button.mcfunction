##Called when someone presses the start button.

##Resetting the button and trapdor

setblock -9 17 -10 air destroy
setblock -10 18 -10 minecraft:iron_trapdoor[open=false,half=bottom,facing=south]
setblock -10 16 -10 minecraft:iron_trapdoor[facing=west,half=top,open=false,powered=false,waterlogged=false]
setblock -10 17 -11 minecraft:iron_trapdoor[open=true,half=top,facing=north]
setblock -10 17 -9 minecraft:iron_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]

execute if score $countdown pregame matches 0.. run tag @p add temporary_tag
execute if score $countdown pregame matches 0.. run function lobby:pregame/countdown_end
execute if score $ready_players pregame matches 2.. unless score $countdown pregame matches 0.. unless entity @a[tag=temporary_tag] run function lobby:pregame/start_countdown
execute if score $ready_players pregame matches ..1 run function lobby:pregame/not_enough_players

tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10