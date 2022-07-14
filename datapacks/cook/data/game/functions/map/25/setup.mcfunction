function game:map/25/teleport

# Spinning laser
summon minecraft:area_effect_cloud 3019 67 2012 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["spinning_laser", "die_between_games"]}
# Stationary floor laser
summon marker 3003.00 66.35 2008 {Tags: ["stationary_laser", "die_between_games"]}
# Up and down laser
summon armor_stand 3000.45 64.9 2000 {Tags:["sliding_laser", "sliding_laser_primary", "die_between_games"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Pose:{Head:[90f,0f,0f]},Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1603067143,-88585229,-1777822630,-164656805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiYmRkNmU1MzM2NDNkNDhmN2E5YWYwNjBkMzFkYmM3NmUiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCIsInByb2ZpbGVJZCI6IjgwMThhYjAwYjJhZTQ0Y2FhYzliZjYwZWY5MGY0NWU1IiwidGV4dHVyZUlkIjoiZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCJ9fSwic2tpbiI6eyJpZCI6ImJkZDZlNTMzNjQzZDQ4ZjdhOWFmMDYwZDMxZGJjNzZlIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2YyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAiLCJwcm9maWxlSWQiOiI4MDE4YWIwMGIyYWU0NGNhYWM5YmY2MGVmOTBmNDVlNSIsInRleHR1cmVJZCI6ImYyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAifSwiY2FwZSI6bnVsbH0="}]}}}}]}
summon armor_stand 3005.55 64.9 2000 {Tags:["sliding_laser", "die_between_games"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Pose:{Head:[90f,0f,0f]},Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1603067143,-88585229,-1777822630,-164656805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7ImlkIjoiYmRkNmU1MzM2NDNkNDhmN2E5YWYwNjBkMzFkYmM3NmUiLCJ0eXBlIjoiU0tJTiIsInVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCIsInByb2ZpbGVJZCI6IjgwMThhYjAwYjJhZTQ0Y2FhYzliZjYwZWY5MGY0NWU1IiwidGV4dHVyZUlkIjoiZjJjNjE3ODM1OTBiNmU2ODQ3MzAwNWIzMmVjMGEwOGJjM2I5NWQ2NDkwMzZiMzU4YWZlNzdhZDhhZjg4NDgwMCJ9fSwic2tpbiI6eyJpZCI6ImJkZDZlNTMzNjQzZDQ4ZjdhOWFmMDYwZDMxZGJjNzZlIiwidHlwZSI6IlNLSU4iLCJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2YyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAiLCJwcm9maWxlSWQiOiI4MDE4YWIwMGIyYWU0NGNhYWM5YmY2MGVmOTBmNDVlNSIsInRleHR1cmVJZCI6ImYyYzYxNzgzNTkwYjZlNjg0NzMwMDViMzJlYzBhMDhiYzNiOTVkNjQ5MDM2YjM1OGFmZTc3YWQ4YWY4ODQ4MDAifSwiY2FwZSI6bnVsbH0="}]}}}}]}
# Alternating ceiling lasers
summon marker 3004 69 2004 {Tags: ["ceiling_laser", "ceiling_laser_outer", "die_between_games"]}
summon marker 3001 69 2004 {Tags: ["ceiling_laser", "ceiling_laser_outer", "die_between_games"]}
summon marker 3003 70 2004 {Tags: ["ceiling_laser", "ceiling_laser_inner", "die_between_games"]}
summon marker 3002 70 2004 {Tags: ["ceiling_laser", "ceiling_laser_inner", "die_between_games"]}

# Ingredients
schedule function game:map/25/ingredient_setup 1s