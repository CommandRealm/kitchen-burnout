particle end_rod ~ ~ ~ 0 0 0 1 0 force
execute if block ~ ~ ~ air positioned ^ ^ ^.5 if score @s crmTraycasthit matches 0 run function terra:shape
execute unless block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["crmTshapeSpawn"],NoGravity:1b}
execute if score @s crmTshape matches 0 if score @s crmTraycasthit matches 0 run function terra:cylinder 
execute if score @s crmTshape matches 1 if score @s crmTraycasthit matches 0 run function terra:small_sphere
execute if score @s crmTshape matches 2 if score @s crmTraycasthit matches 0 run function terra:large_sphere
execute unless block ~ ~ ~ air run scoreboard players set @s crmTraycasthit 1
kill @e[tag=crmTshapeSpawn]