# Called when someone presses the start button.

# Resetting the button and trapdor

setblock -4 68 38 air destroy
setblock -3 68 37 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
setblock -4 69 37 minecraft:iron_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
setblock -5 68 37 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
setblock -4 67 37 minecraft:iron_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]

execute if score $countdown pregame matches 0.. run tag @p add temporary_tag
execute if score $countdown pregame matches 0.. run function lobby:pregame/countdown_end
execute if score $ready_players pregame matches 2.. unless score $countdown pregame matches 0.. unless entity @a[tag=temporary_tag] run function lobby:pregame/start_countdown
execute if score $ready_players pregame matches ..1 run function lobby:pregame/not_enough_players

tag @a remove temporary_tag

# Setting up button delay
scoreboard players set $button pregame 10