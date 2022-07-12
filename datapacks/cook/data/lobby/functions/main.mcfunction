# Runs whenever someone is in the lobby

# Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

# Ender chest stuff
execute as @a[gamemode=adventure,tag=!playing,x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/main

# Hats
execute as @a[gamemode=adventure,tag=!playing,x=0,y=66,z=0,distance=..500,scores={hat=1..9}] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef


execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2.5 ~
effect give @e[type=slime,x=0,y=66,z=0,distance=..1000] invisibility 100 255 true