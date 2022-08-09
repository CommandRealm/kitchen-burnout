# Function is to see if it should start the countdown

# Toggle ready if player clicked
execute as @a[scores={pregame_click=1..}] at @s run function lobby:spectating/click

# Check if player needs book
execute as @a[x=0,y=66,z=0,distance=..1000,gamemode=adventure,tag=!tutorial] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function lobby:spectating/get_book
execute as @a[x=0,y=66,z=0,distance=..1000,gamemode=adventure,tag=tutorial] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:knowledge_book"}]}] run function lobby:spectating/get_book

# When someone drops their book
execute as @a[x=0,y=66,z=0,distance=..1000,scores={drop_ready_book=1..}] at @s run function lobby:pregame/drop_ready_book

# Keep them near players
execute as @a[gamemode=spectator,tag=spectating,tag=!admin] at @s unless entity @a[gamemode=adventure,tag=playing,tag=!tutorial,distance=..150] run tp @s @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,sort=nearest]

execute as @a[gamemode=spectator,tag=spectating,scores={stop_spectating=1..}] at @s run function general:join_game