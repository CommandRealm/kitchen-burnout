# Update maps
execute if score $display_map settings matches 1 run scoreboard players set $map settings 1
execute if score $display_map settings matches 2 run scoreboard players set $map settings 9
execute if score $display_map settings matches 3 run scoreboard players set $map settings 2
execute if score $display_map settings matches 4 run scoreboard players set $map settings 5
execute if score $display_map settings matches 5 run scoreboard players set $map settings 17
execute if score $display_map settings matches 6 run scoreboard players set $map settings 11
execute if score $display_map settings matches 7 run scoreboard players set $map settings 13
execute if score $display_map settings matches 8 run scoreboard players set $map settings 15
execute if score $display_map settings matches 9 run scoreboard players set $map settings 14
execute if score $display_map settings matches 10 run scoreboard players set $map settings 12
execute if score $display_map settings matches 11 run scoreboard players set $map settings 25
execute if score $display_map settings matches 12 run scoreboard players set $map settings 22
execute if score $display_map settings matches 13 run scoreboard players set $map settings 8
execute if score $display_map settings matches 14 run scoreboard players set $map settings 18
execute if score $display_map settings matches 15 run scoreboard players set $map settings 19
execute if score $display_map settings matches 16 run scoreboard players set $map settings 30
execute if score $display_map settings matches 17 run scoreboard players set $map settings 28
execute if score $display_map settings matches 18 run scoreboard players set $map settings 29
execute if score $display_map settings matches 19 run scoreboard players set $map settings 26
execute if score $display_map settings matches 20 run scoreboard players set $map settings 27

# Do math for maps
scoreboard players operation $place_maps settings = $display_map settings
scoreboard players operation $place_maps settings *= $12 number
scoreboard players operation $place_maps settings -= $4 number
# Update maps
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=1,limit=1] Item.tag.map int 1 run scoreboard players get $place_maps settings
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=2,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=3,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=4,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=5,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=6,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=7,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=8,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=9,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=10,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=11,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number
execute store result entity @e[type=glow_item_frame,tag=map_selection,tag=12,limit=1] Item.tag.map int 1 run scoreboard players operation $place_maps settings += $1 number

# Food type
execute if score $display_map settings matches 1..5 as @e[type=armor_stand,tag=food_type] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1272329746,-1892921506,-1486825879,1780558592],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFlNWQ2NTZjNjM1Mjc4MjJjMjE3ZjQyNjdkYTBiNzUyNmU2NTQyNTRiNDFlNDA3N2VhNjc3YmM3Nzg2M2M1YiJ9fX0="}]}}}}],CustomName:'["",{"translate":"Burgers","color":"#b55d2a"}]',CustomNameVisible:1b,Small:1b}
execute if score $display_map settings matches 6..10 as @e[type=armor_stand,tag=food_type] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1131486595,-1289730119,-1436633997,-1381054206],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjNiZjhmY2EyYWYzNTkyYzU1NzRiMTNlM2JjZjYxZTJmYWU4Mjk3ODg1MzVmMGRkZWFhN2EyZTQ1YjZiYTQifX19"}]}}}}],CustomName:'["",{"translate":"Sushi","color":"green"}]',CustomNameVisible:1b,Small:1b}
execute if score $display_map settings matches 11..15 as @e[type=armor_stand,tag=food_type] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-790487307,-894546625,-1464919218,-1327838143],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTYyOTZiZTlkY2ZlNWUyZGEwNDA4NTI5NThjMjA1YzRmNDM4NmMyZDhhYWI0NjE2N2E2ZjQxY2VlYjJlZjNlNiJ9fX0="}]}}}}],CustomName:'["",{"translate":"Tacos","color":"red"}]',CustomNameVisible:1b,Small:1b}
execute if score $display_map settings matches 16..20 as @e[type=armor_stand,tag=food_type] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1147760935,-1137292444,-1659939528,1313561017],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ1MTAzNTVhMTVjZjUzNjQyNGUwYTBhNDE5OTdjYjE4YTM2NjU0NzgzYWFmODM0OWUyOTFhZDMyODRhZDFiOCJ9fX0="}]}}}}],CustomName:'["",{"translate":"Ice Cream","color":"aqua"}]',CustomNameVisible:1b,Small:1b}
# Kitchen Name
execute if score $display_map settings matches 1 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Default Kitchen","color":"gold"}]'}
execute if score $display_map settings matches 2 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Archery Range","color":"gold"}]'}
execute if score $display_map settings matches 3 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Simple Parkour","color":"gold"}]'}
execute if score $display_map settings matches 4 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"TNT Launchpads","color":"gold"}]'}
execute if score $display_map settings matches 5 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Falling Ingredients","color":"gold"}]'}
execute if score $display_map settings matches 6 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Simply Sushi","color":"gold"}]'}
execute if score $display_map settings matches 7 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Riptide Sewers","color":"gold"}]'}
execute if score $display_map settings matches 8 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Elytra Tunnels","color":"gold"}]'}
execute if score $display_map settings matches 9 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Slime Jumps","color":"gold"}]'}
execute if score $display_map settings matches 10 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Trident Fishing","color":"gold"}]'}
execute if score $display_map settings matches 11 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Laser Laboratory","color":"gold"}]'}
execute if score $display_map settings matches 12 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Sliding Platforms","color":"gold"}]'}
execute if score $display_map settings matches 13 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Projectile Panic","color":"gold"}]'}
execute if score $display_map settings matches 14 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Spinning Supports","color":"gold"}]'}
execute if score $display_map settings matches 15 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Meteor Shower","color":"gold"}]'}
execute if score $display_map settings matches 16 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Blizzard Blast","color":"gold"}]'}
execute if score $display_map settings matches 17 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Frozen Paths","color":"gold"}]'}
execute if score $display_map settings matches 18 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Thin Ice","color":"gold"}]'}
execute if score $display_map settings matches 19 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Ice Bridges","color":"gold"}]'}
execute if score $display_map settings matches 20 run data merge entity @e[type=area_effect_cloud,tag=map_name,limit=1] {CustomName:'["",{"translate":"Trial by (Camp)fire","color":"gold"}]'}
# Gimmicks
execute if score $display_map settings matches 1 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:""}
execute if score $display_map settings matches 1 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"No hazards.","color":"aqua"}]'}
execute if score $display_map settings matches 2 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:""}
execute if score $display_map settings matches 2 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"Shoot targets to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 3 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:""}
execute if score $display_map settings matches 3 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"Complete simple parkour to reach ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 4 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use explosions to launch yourself between","color":"aqua"}]'}
execute if score $display_map settings matches 4 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"the floating islands.","color":"aqua"}]'}
execute if score $display_map settings matches 5 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use a fishing rod to catch ingredients","color":"aqua"}]'}
execute if score $display_map settings matches 5 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"sliding down a wall.","color":"aqua"}]'}
execute if score $display_map settings matches 6 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:""}
execute if score $display_map settings matches 6 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"No hazards.","color":"aqua"}]'}
execute if score $display_map settings matches 7 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use a Riptide Trident to quickly move","color":"aqua"}]'}
execute if score $display_map settings matches 7 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"through the sewers.","color":"aqua"}]'}
execute if score $display_map settings matches 8 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use an Elytra to glide through twisted","color":"aqua"}]'}
execute if score $display_map settings matches 8 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"passageways to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 9 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Complete bouncy parkour to obtain","color":"aqua"}]'}
execute if score $display_map settings matches 9 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"ingredients and return through the pipes.","color":"aqua"}]'}
execute if score $display_map settings matches 10 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use a Warping Trident to warp fish","color":"aqua"}]'}
execute if score $display_map settings matches 10 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"you hit right to the kitchen.","color":"aqua"}]'}
execute if score $display_map settings matches 11 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Navigate the laser-filled facility","color":"aqua"}]'}
execute if score $display_map settings matches 11 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 12 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Ride sliding platforms to reach","color":"aqua"}]'}
execute if score $display_map settings matches 12 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"the ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 13 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Use a Shield to block arrows being","color":"aqua"}]'}
execute if score $display_map settings matches 13 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"fired down a tunnel.","color":"aqua"}]'}
execute if score $display_map settings matches 14 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Hop on spinning platforms to reach","color":"aqua"}]'}
execute if score $display_map settings matches 14 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"the ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 15 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Avoid being blown up or burnt by","color":"aqua"}]'}
execute if score $display_map settings matches 15 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"falling meteors.","color":"aqua"}]'}
execute if score $display_map settings matches 16 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Stay under cover to avoid being","color":"aqua"}]'}
execute if score $display_map settings matches 16 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"frozen by the falling snow.","color":"aqua"}]'}
execute if score $display_map settings matches 17 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Spam-jump your way through tunnels","color":"aqua"}]'}
execute if score $display_map settings matches 17 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"lined with ice.","color":"aqua"}]'}
execute if score $display_map settings matches 18 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Make your way back and forth over a","color":"aqua"}]'}
execute if score $display_map settings matches 18 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"lightly-frozen river.","color":"aqua"}]'}
execute if score $display_map settings matches 19 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:'["",{"translate":"Push armor stands to create bridges","color":"aqua"}]'}
execute if score $display_map settings matches 19 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"of ice over the frigid water.","color":"aqua"}]'}
execute if score $display_map settings matches 20 run data merge entity @e[type=area_effect_cloud,tag=gimmick,limit=1] {CustomName:""}
execute if score $display_map settings matches 20 run data merge entity @e[type=area_effect_cloud,tag=gimmick_2,limit=1] {CustomName:'["",{"translate":"Stay warm from the heat of the campfire.","color":"aqua"}]'}