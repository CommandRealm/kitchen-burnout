particle totem_of_undying ~ ~ ~ 0 0 0 1 0 force
execute if block ~ ~ ~ air positioned ^ ^ ^.5 run function terra:texture
execute unless block ~ ~ ~ air run summon area_effect_cloud ~ ~1 ~ {Tags:["crmTtexture"],Age:1}
execute unless block ~ ~ ~ air run execute store result score $random_texture crmTrandom run data get entity @e[type=area_effect_cloud,tag=crmTtexture,limit=1] UUID[0] 1
execute unless block ~ ~ ~ air run scoreboard players operation $random_texture crmTrandom %= $random_texture_mod crmTrandom
kill @e[type=area_effect_cloud,tag=crmTrandom]
execute unless block ~ ~ ~ air if score $random_texture crmTrandom matches 0 run setblock ~ ~ ~ sponge
execute unless block ~ ~ ~ air if score $random_texture crmTrandom matches 1 run setblock ~ ~ ~ wet_sponge
execute unless block ~ ~ ~ air if score $random_texture crmTrandom matches 2 run setblock ~ ~ ~ hay_block
execute unless block ~ ~ ~ air if score $random_texture crmTrandom matches 3 run setblock ~ ~ ~ honeycomb_block
execute unless block ~ ~ ~ air if score $random_texture crmTrandom matches 4 run setblock ~ ~ ~ honey_block