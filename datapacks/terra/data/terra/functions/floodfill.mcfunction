setblock ~ ~ ~ wet_sponge
scoreboard players add @s crmTfill 1
execute if score @s crmTfill >= $size crmTfill run kill @s
execute if entity @s[tag=3D] unless score @s crmTfill >= $size crmTfill positioned ~ ~1 ~ run function terra:fill2d
execute unless score @s crmTfill >= $size crmTfill positioned ~1 ~ ~ run function terra:fill2d
execute unless score @s crmTfill >= $size crmTfill positioned ~-1 ~ ~ run function terra:fill2d
execute unless score @s crmTfill >= $size crmTfill positioned ~ ~ ~1 run function terra:fill2d
execute unless score @s crmTfill >= $size crmTfill positioned ~ ~ ~-1 run function terra:fill2d