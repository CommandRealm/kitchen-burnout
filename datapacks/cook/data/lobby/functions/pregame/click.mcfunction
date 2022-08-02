# Pregame click function.

# Toggles ready score between 0 and 1.
scoreboard players add @s ready 1
scoreboard players set @s[scores={ready=2..}] ready 0

# Reset score
scoreboard players reset @s pregame_click

# clear books if it's at fifty
tag @s add dont_unready
execute if score $mode settings matches 3 if entity @s[scores={ready=1}] run scoreboard players set @a[tag=!dont_unready] ready 0
execute if score $mode settings matches 3 if entity @s[scores={ready=1}] as @a[tag=!dont_unready] at @s run function lobby:pregame/get_book
execute if score $mode settings matches 3 if entity @s[scores={ready=1}] if score $countdown pregame matches 0.. run function lobby:pregame/start_countdown
tag @a remove dont_unready
# Clearing the book makes the function called quickly after it update the book.
clear @s knowledge_book

playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 0.5 2