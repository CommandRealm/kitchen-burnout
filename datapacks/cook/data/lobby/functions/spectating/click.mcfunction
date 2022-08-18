# Spectate
tag @s add spectating
tag @s add show_bossbar
execute unless score $mode settings matches 2 run bossbar set game:timer players @a[tag=show_bossbar]
gamemode spectator @s
tag @s remove playing
tag @s remove tutorial
scoreboard players enable @s stop_spectating
tellraw @s ["",{"text":"\n\n- ","color":"gray"},{"translate":"To stop spectating, click this message or run","color":"green","clickEvent":{"action":"run_command","value":"/trigger stop_spectating"}},{"text":"\n- ","color":"gray"},{"text":"/trigger stop_spectating","clickEvent":{"action":"run_command","value":"/trigger stop_spectating"},"color":"dark_green","underlined":false},{"text":"\n\n"}]

tp @s @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=random]

# Reset score
scoreboard players reset @s pregame_click

# Reset lobby bossbar players
bossbar set lobby players @a[gamemode=adventure,x=0,y=66,z=0,distance=..500]

# Clearing the book makes the function called quickly after it update the book.
clear @s knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.5 2