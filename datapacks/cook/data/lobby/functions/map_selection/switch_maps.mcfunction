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
execute if score $display_map settings matches 1 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Default Kitchen","color":"gold"}]'}
execute if score $display_map settings matches 2 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Archery Range","color":"gold"}]'}
execute if score $display_map settings matches 3 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Simple Parkour","color":"gold"}]'}
execute if score $display_map settings matches 4 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"TNT Launchpads","color":"gold"}]'}
execute if score $display_map settings matches 5 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Falling Ingredients","color":"gold"}]'}
execute if score $display_map settings matches 6 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Simply Sushi","color":"gold"}]'}
execute if score $display_map settings matches 7 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Riptide Sewers","color":"gold"}]'}
execute if score $display_map settings matches 8 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Elytra Tunnels","color":"gold"}]'}
execute if score $display_map settings matches 9 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Slime Jumps","color":"gold"}]'}
execute if score $display_map settings matches 10 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Trident Fishing","color":"gold"}]'}
execute if score $display_map settings matches 11 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Laser Laboratory","color":"gold"}]'}
execute if score $display_map settings matches 12 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Sliding Platforms","color":"gold"}]'}
execute if score $display_map settings matches 13 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Projectile Panic","color":"gold"}]'}
execute if score $display_map settings matches 14 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Spinning Supports","color":"gold"}]'}
execute if score $display_map settings matches 15 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Meteor Shower","color":"gold"}]'}
execute if score $display_map settings matches 16 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Blizzard Blast","color":"gold"}]'}
execute if score $display_map settings matches 17 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Frozen Paths","color":"gold"}]'}
execute if score $display_map settings matches 18 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Thin Ice","color":"gold"}]'}
execute if score $display_map settings matches 19 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Ice Bridges","color":"gold"}]'}
execute if score $display_map settings matches 20 run data merge entity @e[type=text_display,tag=map_name,limit=1] {text:'["",{"translate":"Trial by (Camp)fire","color":"gold"}]'}

# Gimmicks
execute if score $display_map settings matches 1 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"No hazards.","color":"aqua"}]'}
execute if score $display_map settings matches 2 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Shoot targets to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 3 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Complete simple parkour to reach ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 4 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use explosions to launch yourself between","color":"aqua"},{"text":" "},{"translate":"the floating islands.","color":"aqua"}]'}
execute if score $display_map settings matches 5 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a fishing rod to catch ingredients","color":"aqua"},{"text":" "},{"translate":"sliding down a wall.","color":"aqua"}]'}
execute if score $display_map settings matches 6 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"No hazards.","color":"aqua"}]'}
execute if score $display_map settings matches 7 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Riptide Trident to quickly move","color":"aqua"},{"text":" "},{"translate":"through the sewers.","color":"aqua"}]'}
execute if score $display_map settings matches 8 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use an Elytra to glide through twisted","color":"aqua"},{"text":" "},{"translate":"passageways to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 9 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Complete bouncy parkour to obtain","color":"aqua"},{"text":" "},{"translate":"ingredients and return through the pipes.","color":"aqua"}]'}
execute if score $display_map settings matches 10 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Warping Trident to warp fish","color":"aqua"},{"text":" "},{"translate":"you hit right to the kitchen.","color":"aqua"}]'}
execute if score $display_map settings matches 11 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Navigate the laser-filled facility","color":"aqua"},{"text":" "},{"translate":"to obtain ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 12 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Ride sliding platforms to reach","color":"aqua"},{"text":" "},{"translate":"the ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 13 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Shield to block arrows being","color":"aqua"},{"text":" "},{"translate":"fired down a tunnel.","color":"aqua"}]'}
execute if score $display_map settings matches 14 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Hop on spinning platforms to reach","color":"aqua"},{"text":" "},{"translate":"the ingredients.","color":"aqua"}]'}
execute if score $display_map settings matches 15 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Avoid being blown up or burnt by","color":"aqua"},{"text":" "},{"translate":"falling meteors.","color":"aqua"}]'}
execute if score $display_map settings matches 16 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Stay under cover to avoid being","color":"aqua"},{"text":" "},{"translate":"frozen by the falling snow.","color":"aqua"}]'}
execute if score $display_map settings matches 17 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Spam-jump your way through tunnels","color":"aqua"},{"text":" "},{"translate":"lined with ice.","color":"aqua"}]'}
execute if score $display_map settings matches 18 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Make your way back and forth over a","color":"aqua"},{"text":" "},{"translate":"lightly-frozen river.","color":"aqua"}]'}
execute if score $display_map settings matches 19 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Push armor stands to create bridges","color":"aqua"},{"text":" "},{"translate":"of ice over the frigid water.","color":"aqua"}]'}
execute if score $display_map settings matches 20 as @e[type=text_display,tag=gimmick,tag=!gimmick_back] run data merge entity @s {text:'["",{"translate":"Stay warm from the heat of the campfire.","color":"aqua"}]'}

execute if score $display_map settings matches 1 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"No hazards.","color":"black"}]'}
execute if score $display_map settings matches 2 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Shoot targets to obtain ingredients.","color":"black"}]'}
execute if score $display_map settings matches 3 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Complete simple parkour to reach ingredients.","color":"black"}]'}
execute if score $display_map settings matches 4 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use explosions to launch yourself between","color":"black"},{"text":" "},{"translate":"the floating islands.","color":"black"}]'}
execute if score $display_map settings matches 5 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a fishing rod to catch ingredients","color":"black"},{"text":" "},{"translate":"sliding down a wall.","color":"black"}]'}
execute if score $display_map settings matches 6 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"No hazards.","color":"black"}]'}
execute if score $display_map settings matches 7 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Riptide Trident to quickly move","color":"black"},{"text":" "},{"translate":"through the sewers.","color":"black"}]'}
execute if score $display_map settings matches 8 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use an Elytra to glide through twisted","color":"black"},{"text":" "},{"translate":"passageways to obtain ingredients.","color":"black"}]'}
execute if score $display_map settings matches 9 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Complete bouncy parkour to obtain","color":"black"},{"text":" "},{"translate":"ingredients and return through the pipes.","color":"black"}]'}
execute if score $display_map settings matches 10 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Warping Trident to warp fish","color":"black"},{"text":" "},{"translate":"you hit right to the kitchen.","color":"black"}]'}
execute if score $display_map settings matches 11 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Navigate the laser-filled facility","color":"black"},{"text":" "},{"translate":"to obtain ingredients.","color":"black"}]'}
execute if score $display_map settings matches 12 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Ride sliding platforms to reach","color":"black"},{"text":" "},{"translate":"the ingredients.","color":"black"}]'}
execute if score $display_map settings matches 13 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Use a Shield to block arrows being","color":"black"},{"text":" "},{"translate":"fired down a tunnel.","color":"black"}]'}
execute if score $display_map settings matches 14 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Hop on spinning platforms to reach","color":"black"},{"text":" "},{"translate":"the ingredients.","color":"black"}]'}
execute if score $display_map settings matches 15 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Avoid being blown up or burnt by","color":"black"},{"text":" "},{"translate":"falling meteors.","color":"black"}]'}
execute if score $display_map settings matches 16 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Stay under cover to avoid being","color":"black"},{"text":" "},{"translate":"frozen by the falling snow.","color":"black"}]'}
execute if score $display_map settings matches 17 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Spam-jump your way through tunnels","color":"black"},{"text":" "},{"translate":"lined with ice.","color":"black"}]'}
execute if score $display_map settings matches 18 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Make your way back and forth over a","color":"black"},{"text":" "},{"translate":"lightly-frozen river.","color":"black"}]'}
execute if score $display_map settings matches 19 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Push armor stands to create bridges","color":"black"},{"text":" "},{"translate":"of ice over the frigid water.","color":"black"}]'}
execute if score $display_map settings matches 20 as @e[type=text_display,tag=gimmick,tag=gimmick_back] run data merge entity @s {text:'["",{"translate":"Stay warm from the heat of the campfire.","color":"black"}]'}

# Competitive Best WR Holder
execute if score $display_map settings matches 1 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 1 run data modify entity @s text set from storage comp_wr_holders 1
execute if score $display_map settings matches 2 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 2 run data modify entity @s text set from storage comp_wr_holders 2
execute if score $display_map settings matches 3 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 3 run data modify entity @s text set from storage comp_wr_holders 3
execute if score $display_map settings matches 4 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 4 run data modify entity @s text set from storage comp_wr_holders 4
execute if score $display_map settings matches 5 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 5 run data modify entity @s text set from storage comp_wr_holders 5
execute if score $display_map settings matches 6 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 6 run data modify entity @s text set from storage comp_wr_holders 6
execute if score $display_map settings matches 7 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 7 run data modify entity @s text set from storage comp_wr_holders 7
execute if score $display_map settings matches 8 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 8 run data modify entity @s text set from storage comp_wr_holders 8
execute if score $display_map settings matches 9 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 9 run data modify entity @s text set from storage comp_wr_holders 9
execute if score $display_map settings matches 10 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 10 run data modify entity @s text set from storage comp_wr_holders 10
execute if score $display_map settings matches 11 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 11 run data modify entity @s text set from storage comp_wr_holders 11
execute if score $display_map settings matches 12 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 12 run data modify entity @s text set from storage comp_wr_holders 12
execute if score $display_map settings matches 13 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 13 run data modify entity @s text set from storage comp_wr_holders 13
execute if score $display_map settings matches 14 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 14 run data modify entity @s text set from storage comp_wr_holders 14
execute if score $display_map settings matches 15 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 15 run data modify entity @s text set from storage comp_wr_holders 15
execute if score $display_map settings matches 16 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 16 run data modify entity @s text set from storage comp_wr_holders 16
execute if score $display_map settings matches 17 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 17 run data modify entity @s text set from storage comp_wr_holders 17
execute if score $display_map settings matches 18 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 18 run data modify entity @s text set from storage comp_wr_holders 18
execute if score $display_map settings matches 19 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 19 run data modify entity @s text set from storage comp_wr_holders 19
execute if score $display_map settings matches 20 as @e[type=text_display,tag=comp_wr,tag=!background] if data storage comp_wr_holders 20 run data modify entity @s text set from storage comp_wr_holders 20
execute if score $display_map settings matches 1 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 1 run data modify entity @s text set from storage comp_wr_holders_b 1
execute if score $display_map settings matches 2 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 2 run data modify entity @s text set from storage comp_wr_holders_b 2
execute if score $display_map settings matches 3 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 3 run data modify entity @s text set from storage comp_wr_holders_b 3
execute if score $display_map settings matches 4 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 4 run data modify entity @s text set from storage comp_wr_holders_b 4
execute if score $display_map settings matches 5 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 5 run data modify entity @s text set from storage comp_wr_holders_b 5
execute if score $display_map settings matches 6 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 6 run data modify entity @s text set from storage comp_wr_holders_b 6
execute if score $display_map settings matches 7 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 7 run data modify entity @s text set from storage comp_wr_holders_b 7
execute if score $display_map settings matches 8 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 8 run data modify entity @s text set from storage comp_wr_holders_b 8
execute if score $display_map settings matches 9 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 9 run data modify entity @s text set from storage comp_wr_holders_b 9
execute if score $display_map settings matches 10 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 10 run data modify entity @s text set from storage comp_wr_holders_b 10
execute if score $display_map settings matches 11 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 11 run data modify entity @s text set from storage comp_wr_holders_b 11
execute if score $display_map settings matches 12 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 12 run data modify entity @s text set from storage comp_wr_holders_b 12
execute if score $display_map settings matches 13 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 13 run data modify entity @s text set from storage comp_wr_holders_b 13
execute if score $display_map settings matches 14 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 14 run data modify entity @s text set from storage comp_wr_holders_b 14
execute if score $display_map settings matches 15 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 15 run data modify entity @s text set from storage comp_wr_holders_b 15
execute if score $display_map settings matches 16 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 16 run data modify entity @s text set from storage comp_wr_holders_b 16
execute if score $display_map settings matches 17 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 17 run data modify entity @s text set from storage comp_wr_holders_b 17
execute if score $display_map settings matches 18 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 18 run data modify entity @s text set from storage comp_wr_holders_b 18
execute if score $display_map settings matches 19 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 19 run data modify entity @s text set from storage comp_wr_holders_b 19
execute if score $display_map settings matches 20 as @e[type=text_display,tag=comp_wr,tag=background] if data storage comp_wr_holders 20 run data modify entity @s text set from storage comp_wr_holders_b 20

execute if score $display_map settings matches 1 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 1 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 2 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 2 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 3 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 3 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 4 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 4 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 5 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 5 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 6 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 6 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 7 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 7 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 8 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 8 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 9 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 9 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 10 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 10 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 11 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 11 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 12 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 12 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 13 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 13 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 14 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 14 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 15 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 15 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 16 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 16 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 17 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 17 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 18 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 18 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 19 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 19 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 20 as @e[type=text_display,tag=comp_wr,tag=!background] unless data storage comp_wr_holders 20 run data merge entity @s {text:'["",{"translate":"N/A","color":"blue"}]'}
execute if score $display_map settings matches 1 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 1 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 2 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 2 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 3 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 3 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 4 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 4 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 5 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 5 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 6 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 6 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 7 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 7 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 8 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 8 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 9 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 9 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 10 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 10 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 11 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 11 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 12 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 12 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 13 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 13 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 14 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 14 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 15 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 15 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 16 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 16 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 17 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 17 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 18 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 18 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 19 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 19 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}
execute if score $display_map settings matches 20 as @e[type=text_display,tag=comp_wr,tag=background] unless data storage comp_wr_holders 20 run data merge entity @s {text:'["",{"translate":"N/A","color":"black"}]'}

# Competitive Best WR Time
execute if score $display_map settings matches 1 run scoreboard players operation $calculate game_ticks = $wr comp_1
execute if score $display_map settings matches 2 run scoreboard players operation $calculate game_ticks = $wr comp_2
execute if score $display_map settings matches 3 run scoreboard players operation $calculate game_ticks = $wr comp_3
execute if score $display_map settings matches 4 run scoreboard players operation $calculate game_ticks = $wr comp_4
execute if score $display_map settings matches 5 run scoreboard players operation $calculate game_ticks = $wr comp_5
execute if score $display_map settings matches 6 run scoreboard players operation $calculate game_ticks = $wr comp_6
execute if score $display_map settings matches 7 run scoreboard players operation $calculate game_ticks = $wr comp_7
execute if score $display_map settings matches 8 run scoreboard players operation $calculate game_ticks = $wr comp_8
execute if score $display_map settings matches 9 run scoreboard players operation $calculate game_ticks = $wr comp_9
execute if score $display_map settings matches 10 run scoreboard players operation $calculate game_ticks = $wr comp_10
execute if score $display_map settings matches 11 run scoreboard players operation $calculate game_ticks = $wr comp_11
execute if score $display_map settings matches 12 run scoreboard players operation $calculate game_ticks = $wr comp_12
execute if score $display_map settings matches 13 run scoreboard players operation $calculate game_ticks = $wr comp_13
execute if score $display_map settings matches 14 run scoreboard players operation $calculate game_ticks = $wr comp_14
execute if score $display_map settings matches 15 run scoreboard players operation $calculate game_ticks = $wr comp_15
execute if score $display_map settings matches 16 run scoreboard players operation $calculate game_ticks = $wr comp_16
execute if score $display_map settings matches 17 run scoreboard players operation $calculate game_ticks = $wr comp_17
execute if score $display_map settings matches 18 run scoreboard players operation $calculate game_ticks = $wr comp_18
execute if score $display_map settings matches 19 run scoreboard players operation $calculate game_ticks = $wr comp_19
execute if score $display_map settings matches 20 run scoreboard players operation $calculate game_ticks = $wr comp_20
scoreboard players operation $check game_ticks = $calculate game_ticks
scoreboard players operation $calculate game_minutes = $calculate game_ticks
scoreboard players operation $calculate game_seconds = $calculate game_ticks
# Actually decaseconds
scoreboard players operation $calculate game_ticks %= $100 number
scoreboard players operation $calculate game_minutes /= $6000 number
scoreboard players operation $calculate game_seconds %= $6000 number
scoreboard players operation $calculate game_seconds /= $100 number
# Display times
## Normal
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches 10.. run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Decaseconds
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches ..9 run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Seconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches 10.. run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Seconds and <10 Decaseconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches ..9 run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
# Set from sign
execute unless score $check game_ticks matches 2147483647 as @e[type=text_display,tag=comp_wr_time,tag=!background] run data modify entity @s text set from block 0 -62 0 front_text.messages[0]
# Display times background
## Normal
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches 10.. run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"black","bold":true},{"text":":","color":"black","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"black","bold":true},{"text":".","color":"black","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"black","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Decaseconds
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches ..9 run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"black","bold":true},{"text":":","color":"black","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"black","bold":true},{"text":".0","color":"black","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"black","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Seconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches 10.. run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"black","bold":true},{"text":":0","color":"black","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"black","bold":true},{"text":".","color":"black","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"black","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
## <10 Seconds and <10 Decaseconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches ..9 run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"black","bold":true},{"text":":0","color":"black","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"black","bold":true},{"text":".0","color":"black","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"black","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
# Set from sign
execute unless score $check game_ticks matches 2147483647 as @e[type=text_display,tag=comp_wr_time,tag=background] run data modify entity @s text set from block 0 -62 0 front_text.messages[0]
# No WR Yet
execute if score $check game_ticks matches 2147483647 as @e[type=text_display,tag=comp_wr_time,tag=!background] run data merge entity @s {text:'["",{"translate":"N/A","color":"red","bold":true}]'}
execute if score $check game_ticks matches 2147483647 as @e[type=text_display,tag=comp_wr_time,tag=background] run data merge entity @s {text:'["",{"translate":"N/A","color":"black","bold":true}]'}