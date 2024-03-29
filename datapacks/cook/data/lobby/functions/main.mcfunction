#> lobby:main Runs whenever someone is in the lobby

# Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

# Ender chest stuff
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/main

# Advancements
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:check_advancements

# Hats
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,scores={hat=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef

# Tutorial
execute as @a[gamemode=adventure,tag=playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-7,dx=18,dy=5,dz=8] run tag @s remove playing
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-7,dx=18,dy=5,dz=8] run function lobby:tutorial/exit
tag @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8] add tutorial
execute as @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing,tag=!tut_ingredient] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
tellraw @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing,tag=!tut_ingredient] ["",{"text":"\n------------------------------------\n- ","color":"gray"},{"translate":"Picking Up Ingredients:","color":"gold"},{"text":"\n- ","color":"gray"},{"translate":"Right click","color":"green"},{"translate":" on a glass box to collect the "},{"translate":"ingredient","color":"green"},{"translate":" inside."},{"text":"\n------------------------------------\n","color":"gray"}] 
execute if entity @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing] as @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tutorial] run data merge entity @s {Glowing:1b}
execute if entity @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing] as @e[type=area_effect_cloud,tag=station_display_text,tag=tutorial] run data merge entity @s {CustomNameVisible:1b}
execute as @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing] run title @s times 0 25 5
execute as @a[gamemode=adventure,x=4,y=65,z=-7,dx=18,dy=5,dz=8,tag=tutorial,tag=!playing] unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] unless entity @e[type=armor_stand,tag=prep_slot] run scoreboard players set @s recipe_cooldown 25
tag @a[gamemode=adventure,tag=tutorial,x=4,y=65,z=-7,dx=18,dy=5,dz=8] add playing
execute if entity @a[gamemode=adventure,tag=tutorial,x=0,y=66,z=0,distance=..500] run function lobby:tutorial/main

# Team platforms
execute as @e[type=falling_block,tag=team_platform] at @s unless block ~ ~-0.6 ~ air run playsound block.glass.fall master @a ~ ~ ~ 1 0
execute as @e[type=falling_block,tag=team_platform] at @s unless block ~ ~-0.6 ~ air run setblock ~ ~-0.6 ~ sea_lantern
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=6,y=68,z=37,dx=1,dy=0,dz=1,tag=!lobby_team_1] at @s[nbt={OnGround:1b}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 5 1
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=6,y=68,z=37,dx=1,dy=0,dz=1,tag=!lobby_team_1] at @s[nbt={OnGround:1b}] run tellraw @s ["",{"text":"- ","color":"gray"},{"translate":"You're on the Spoons!","color":"blue"}]
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=6,y=68,z=37,dx=1,dy=0,dz=1] at @s run tag @s[nbt={OnGround:1b}] add lobby_team_1
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=6,y=68,z=37,dx=1,dy=0,dz=1] at @s run tag @s[nbt={OnGround:1b}] remove lobby_team_2
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=9,y=68,z=37,dx=1,dy=0,dz=1,tag=!lobby_team_2] at @s[nbt={OnGround:1b}] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 5 1
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=9,y=68,z=37,dx=1,dy=0,dz=1,tag=!lobby_team_2] at @s[nbt={OnGround:1b}] run tellraw @s ["",{"text":"- ","color":"gray"},{"translate":"You're on the Forks!","color":"red"}]
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=9,y=68,z=37,dx=1,dy=0,dz=1] at @s run tag @s[nbt={OnGround:1b}] remove lobby_team_1
execute if block 10 66 37 minecraft:red_stained_glass as @a[gamemode=adventure,x=9,y=68,z=37,dx=1,dy=0,dz=1] at @s run tag @s[nbt={OnGround:1b}] add lobby_team_2
execute if block 10 66 37 minecraft:red_stained_glass as @e[type=area_effect_cloud,tag=team_platform] run data merge entity @s {CustomNameVisible:1b}
execute unless block 10 66 37 minecraft:red_stained_glass as @e[type=area_effect_cloud,tag=team_platform] run data merge entity @s {CustomNameVisible:0b}
# Randomize button
execute if block 10 66 37 minecraft:red_stained_glass if block 8 67 37 minecraft:stone_button[face=wall,facing=south,powered=true] if score $game state matches 0 run function options:teams/randomize
execute if score $random_button pregame matches 1.. run scoreboard players remove $random_button pregame 1
execute if score $random_button pregame matches 0 if block 10 66 37 minecraft:red_stained_glass run setblock 8 67 37 minecraft:stone_button[face=wall,facing=south,powered=false]
execute if score $random_button pregame matches 0 if block 10 66 37 minecraft:red_stained_glass run setblock 8 67 35 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false] replace

# Intro text
execute if entity @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,tag=intro_text_call] run function lobby:intro/main

# Lobby bossbar
bossbar set lobby players @a[gamemode=adventure,x=0,y=66,z=0,distance=..500]

# Spin armor stands
execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2.5 ~

# Warp players back if they go too far out
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..600,tag=!admin] at @s unless entity @s[x=-250,y=42,z=-250,dx=500,dy=500,dz=500] run effect give @s blindness 3 255 true
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..600,tag=!admin] at @s unless entity @s[x=-250,y=42,z=-250,dx=500,dy=500,dz=500] run effect give @s darkness 3 255 true
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..600,tag=!admin] at @s unless entity @s[x=-250,y=42,z=-250,dx=500,dy=500,dz=500] run playsound entity.enderman.teleport master @s -11.0 68 46.0 1000 0
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..600,tag=!admin] at @s unless entity @s[x=-250,y=42,z=-250,dx=500,dy=500,dz=500] run tp @s -11.0 68 46.0 -148 -18

# credits stuffs
execute if entity @a[gamemode=adventure,x=37,y=67,z=37,distance=..15] run function credits:main
execute unless entity @a[gamemode=adventure,x=37,y=67,z=37,distance=..15] as @e[type=armor_stand,tag=admius,limit=1] unless score @s admius.is_paused matches 1 run function credits:admius/pause
execute unless entity @a[gamemode=adventure,x=37,y=67,z=37,distance=..15] as @e[type=armor_stand,tag=joel,limit=1] unless score @s joel.new.is_paused matches 1 run function credits:joel/pause
execute unless entity @a[gamemode=adventure,x=37,y=67,z=37,distance=..15] as @e[type=armor_stand,tag=pinkessi,limit=1] unless score @s model.new.is_paused matches 1 run function credits:pinkessi/pause