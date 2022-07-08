# Get how many players are needed to end the game early (Classic=Half,Competitive=1,Versus/Shuffle=All)
execute unless score $mode settings matches 3 store result score $required end if entity @a[gamemode=adventure,tag=playing]
execute if score $mode settings matches 0 if score $required end matches 2.. run scoreboard players operation $required end /= $2 number
execute if score $mode settings matches 3 run scoreboard players set $required end 1

# Get players trying to end the game
execute store result score $players end if entity @a[gamemode=adventure,tag=playing,scores={end=1..}]

# Let other players know someone is trying to end the game
execute if score $players end > $old_players end unless score $players end >= $required end run tellraw @a[gamemode=adventure,tag=playing] ["",{"text":"\n- ","color":"gray"},{"score":{"name":"$players","objective":"end"},"color":"dark_aqua"},{"translate":" out of ","color":"green"},{"score":{"name":"$required","objective":"end"},"color":"dark_aqua"},{"translate":" required players would like to end the game!","color":"green"}]
execute if score $players end > $old_players end unless score $players end >= $required end as @a[gamemode=adventure,tag=playing] unless score @s end matches 1.. run tellraw @s ["",{"text":"- ","color":"gray"},{"translate":"If you'd like to end the game early, click this message or run","color":"gray","clickEvent":{"action":"run_command","value":"/trigger end"}},{"text":"\n- ","color":"gray"},{"text":"/trigger end","clickEvent":{"action":"run_command","value":"/trigger end"},"color":"dark_gray","underlined":true},{"text":"\n"}]
execute store result score $old_players end if entity @a[gamemode=adventure,tag=playing,scores={end=1..}]


# End game if required players are met
execute if score $players end >= $required end run scoreboard players reset @a end
execute if score $players end >= $required end run scoreboard players set $no_contest game 1
execute if score $players end >= $required end if score $mode settings matches 0..1 run scoreboard players set $timer game_ticks 39
execute if score $players end >= $required end if score $mode settings matches 2..3 run scoreboard players set $winner shuffle -1

# Correct players trying to use this to end the game early
tellraw @s ["",{"text":"Hey there, it seems like you're trying to end the game early. To do that, use \"/function game:end\" or click on this message!","clickEvent": {"action":"run_command","value":"/function game:end"},"color":"green"}]