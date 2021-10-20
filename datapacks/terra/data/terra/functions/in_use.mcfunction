tag @a[gamemode=!spectator,gamemode=!creative] remove crmTterraform
execute as @a[tag=crmTterraform] at @s run particle minecraft:dust 0 1 1 1 ~ ~0.2 ~ 0.4 0 0.4 1 1 force
execute as @a[tag=crmTterraform] at @s run particle minecraft:dust 1 1 0 1 ~ ~0.2 ~ 0.2 0 0.2 1 1 force
execute as @a[tag=crmTterraform,scores={crmTsnowball=1..}] at @s run tag @e[type=snowball,distance=..3,limit=1,sort=nearest] add crmTsphere
execute as @a[tag=crmTterraform,scores={crmTsnowball=1..}] at @s run data merge entity @e[type=snowball,distance=..3,limit=1,sort=nearest] {NoGravity:1}
scoreboard players set @a crmTsnowball 0
execute as @a[tag=crmTterraform,scores={crmTbatspawn=1..}] at @s run tag @e[type=bat,distance=..6,limit=1,sort=nearest] add crmT3by3by3
scoreboard players set @a crmTbatspawn 0
execute as @a[tag=crmTterraform,scores={crmTbeespawn=1..}] at @s run tag @e[type=bee,distance=..6,limit=1,sort=nearest] add crmTcolumnup
scoreboard players set @a crmTbeespawn 0
execute as @a[tag=crmTterraform,scores={crmTblazespawn=1..}] at @s run tag @e[type=blaze,distance=..6,limit=1,sort=nearest] add crmTcolumndown
scoreboard players set @a crmTblazespawn 0

#region Shape Tool
# Drop Cat Egg to raycast shape placement
execute as @a[tag=crmTterraform,scores={crmTdropcat=1..}] at @s anchored eyes run function terra:shape
execute as @a[tag=crmTterraform,scores={crmTdropcat=1..}] at @s run replaceitem entity @s weapon.mainhand cat_spawn_egg
execute as @a[tag=crmTterraform,scores={crmTdropcat=1..}] at @s run kill @e[type=item,distance=..5,limit=1,sort=nearest]
scoreboard players set @a crmTdropcat 0
scoreboard players add @a[scores={crmTraycasthit=1..}] crmTraycasthit 1
scoreboard players set @a[scores={crmTraycasthit=3..}] crmTraycasthit 0
# Swap Cat Egg to offhand to change shape
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cat_spawn_egg"}]}] run scoreboard players add @s crmTshape 1
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cat_spawn_egg"}]}] if score @s crmTshape matches 3.. run scoreboard players set @s crmTshape 0
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cat_spawn_egg"}]}] run replaceitem entity @s weapon.mainhand cat_spawn_egg
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cat_spawn_egg"}]}] run replaceitem entity @s weapon.offhand air
execute as @a[tag=crmTterraform,nbt={SelectedItem:{id:"minecraft:cat_spawn_egg"}}] if score @s crmTshape matches 0 run title @s actionbar [{"text":"Current Shape: ","color":"dark_aqua"},{"text":"Cylinder","color":"gold"},{"text":" (Swap hands to change)","color":"aqua"}]
execute as @a[tag=crmTterraform,nbt={SelectedItem:{id:"minecraft:cat_spawn_egg"}}] if score @s crmTshape matches 1 run title @s actionbar [{"text":"Current Shape: ","color":"dark_aqua"},{"text":"Small Sphere","color":"gold"},{"text":" (Swap hands to change)","color":"aqua"}]
execute as @a[tag=crmTterraform,nbt={SelectedItem:{id:"minecraft:cat_spawn_egg"}}] if score @s crmTshape matches 2 run title @s actionbar [{"text":"Current Shape: ","color":"dark_aqua"},{"text":"Large Sphere","color":"gold"},{"text":" (Swap hands to change)","color":"aqua"}]
#endregion

#region Texture Tool
# Drop Cave Spider Egg to raycast texture placement
execute as @a[tag=crmTterraform,scores={crmTdropcave=1..}] at @s anchored eyes run function terra:texture
execute as @a[tag=crmTterraform,scores={crmTdropcave=1..}] at @s run replaceitem entity @s weapon.mainhand cave_spider_spawn_egg
execute as @a[tag=crmTterraform,scores={crmTdropcave=1..}] at @s run kill @e[type=item,distance=..5,limit=1,sort=nearest]
scoreboard players set @a crmTdropcave 0
# Swap Cave Spider Egg to offhand to change block count
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cave_spider_spawn_egg"}]}] run scoreboard players add $random_texture_mod crmTrandom 1
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cave_spider_spawn_egg"}]}] if score $random_texture_mod crmTrandom matches 6.. run scoreboard players set $random_texture_mod crmTrandom 2
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cave_spider_spawn_egg"}]}] run replaceitem entity @s weapon.mainhand cave_spider_spawn_egg
execute as @a[tag=crmTterraform,nbt={Inventory:[{Slot:-106b,id:"minecraft:cave_spider_spawn_egg"}]}] run replaceitem entity @s weapon.offhand air
execute as @a[tag=crmTterraform,nbt={SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}}] run title @s actionbar [{"text":"Texture Variation: ","color":"dark_aqua"},{"score":{"objective": "crmTrandom","name":"$random_texture_mod"},"color":"gold"},{"text":" (Swap hands to change)","color":"aqua"}]
#endregion

#region Fill Tool
execute as @a[tag=crmTterraform,scores={crmTchickenspawn=1..}] at @s if entity @e[type=chicken,distance=..6,limit=1,sort=nearest] at @e[type=chicken,distance=..6,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["crmTfill"]}
execute at @a[tag=crmTterraform,scores={crmTchickenspawn=1..,crmTsneak=1..}] as @e[type=chicken,distance=..6,limit=1,sort=nearest] at @s run tag @e[tag=crmTfill,sort=nearest,distance=..1] add 3D
execute as @a[tag=crmTterraform,scores={crmTchickenspawn=1..}] at @s run tp @e[type=chicken,distance=..6,limit=1,sort=nearest] ~ -500 ~
scoreboard players set @a crmTchickenspawn 0
execute as @e[tag=crmTfill] at @s run function terra:fill2d
#endregion

#region Line Tool
# Spawn Shulker to place vertex for line
execute as @a[tag=crmTterraform,scores={crmTshulkerspawn=1..}] at @s run tag @e[type=shulker,distance=..6,limit=1,sort=nearest] add crmTline
# Click button in chat to draw line between two nearest vertices
execute as @a[tag=crmTterraform,scores={crmTshulkerspawn=1..}] at @s run tellraw @s ["",{"text":"[","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function terra:draw_line"}},{"text":"Click to Draw Line","color":"white","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function terra:draw_line"}},{"text":"]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function terra:draw_line"}}]
#endregion

scoreboard players set @a crmTshulkerspawn 0
execute if entity @e[tag=crmTsphere] run function terra:snowball
execute if entity @e[tag=crmTmarker] unless entity @e[tag=crmTsphere] run function terra:snowball
execute if entity @e[tag=crmTspherebuild] run function terra:sphere
execute if entity @e[tag=crmT3by3by3] run function terra:3by3by3
execute if entity @e[tag=crmTcolumnup] run function terra:columns
execute if entity @e[tag=crmTcolumndown] run function terra:columns
execute if entity @e[tag=crmTline] as @e[tag=crmTline] at @s run data merge entity @s {Health:1.0f,Glowing:1b,NoAI:1b,Silent:1b}

scoreboard players set @a crmTsneak 0