#> lobby:main Runs whenever someone is in the lobby

# Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

# Ender chest stuff
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/main

# Advancements
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:check_advancements

# Hats
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,scores={hat=1..9}] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef

# Tutorial
execute if entity @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=6] if score $game state matches 0 run function game:tutorial/main

execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2.5 ~
effect give @e[type=slime,x=0,y=66,z=0,distance=..1000] invisibility 100 255 true