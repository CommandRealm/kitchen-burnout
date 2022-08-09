# Spectate
tag @s add spectating
gamemode spectator @s
tag @s remove playing
tag @s remove tutorial
scoreboard players enable @s stop_spectating
tellraw @s ["",{"text":"\n\n- ","color":"gray"},{"translate":"To stop spectating, click this message or run","color":"green","clickEvent":{"action":"run_command","value":"/trigger stop_spectating"}},{"text":"\n- ","color":"gray"},{"text":"/trigger stop_spectating","clickEvent":{"action":"run_command","value":"/trigger stop_spectating"},"color":"dark_green","underlined":true},{"text":"\n\n"}]

tp @s @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]

# Reset score
scoreboard players reset @s pregame_click

# Clearing the book makes the function called quickly after it update the book.
clear @s knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.5 2