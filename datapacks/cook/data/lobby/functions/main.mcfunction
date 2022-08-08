#> lobby:main Runs whenever someone is in the lobby

# Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

# Ender chest stuff
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/main

# Advancements
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] at @s run function lobby:check_advancements

# Hats
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,scores={hat=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef

# Tutorial (should probably give tag if anywhere in restauraunt with overlapping checks)
execute as @a[gamemode=adventure,tag=playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] run tag @s remove playing
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500,scores={recipe_cooldown=1..}] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] if entity @a[gamemode=adventure,tag=tutorial,tag=playing] run scoreboard players operation @a[tag=tutorial,tag=playing,limit=1,sort=nearest] recipe_cooldown = @s recipe_cooldown
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500,scores={recipe_cooldown=1..}] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] if entity @a[gamemode=adventure,tag=tutorial,tag=playing] run scoreboard players reset @s recipe_cooldown
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=magma_cube,tag=ingredient_box_outline,tag=tutorial] run data merge entity @s {Glowing:0b}
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=villager,tag=customer,tag=has_blurb,distance=..100] run data merge entity @s {CustomName:"",CustomNameVisible:0b}
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=area_effect_cloud,tag=station_display_text,tag=tutorial] run data merge entity @s {CustomNameVisible:0b}
execute as @a[gamemode=adventure,tag=!playing,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] run clear @s
execute as @a[gamemode=adventure,tag=tutorial,x=0,y=66,z=0,distance=..500] at @s unless entity @s[x=4,y=65,z=-6,dx=18,dy=5,dz=7] run tag @s remove tutorial
tag @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=7] add tutorial
execute if entity @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=7,tag=tutorial,tag=!playing] as @e[type=magma_cube,tag=ingredient_box_outline,tag=tutorial] run data merge entity @s {Glowing:1b}
execute if entity @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=7,tag=tutorial,tag=!playing] as @e[type=area_effect_cloud,tag=station_display_text,tag=tutorial] run data merge entity @s {CustomNameVisible:1b}
execute as @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=7,tag=tutorial,tag=!playing] run title @s times 0 25 5
execute as @a[gamemode=adventure,x=4,y=65,z=-6,dx=18,dy=5,dz=7,tag=tutorial,tag=!playing] unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] unless entity @e[type=armor_stand,tag=prep_slot] run scoreboard players set @s recipe_cooldown 25
tag @a[gamemode=adventure,tag=tutorial,x=4,y=65,z=-6,dx=18,dy=5,dz=7] add playing
execute if entity @a[gamemode=adventure,tag=tutorial,x=0,y=66,z=0,distance=..500] run function lobby:tutorial/main

execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~2.5 ~
#effect give @e[type=slime,x=0,y=66,z=0,distance=..1000] invisibility 100 255 true