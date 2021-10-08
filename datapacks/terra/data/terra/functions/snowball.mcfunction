kill @e[tag=crmTsphere,scores={crmTsnowballtime=60..}]
execute as @e[tag=crmTsphere] at @s run kill @e[tag=crmTmarker,distance=..3]
execute as @e[tag=crmTmarker] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Tags:["crmTspherebuild"]}
kill @e[tag=crmTmarker]
execute as @e[tag=crmTsphere,scores={crmTsnowballtime=3..58}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["crmTmarker"]}
scoreboard players add @e[tag=crmTsphere] crmTsnowballtime 1
execute as @e[tag=crmTsphere,scores={crmTsnowballtime=60..}] at @s run kill @e[tag=crpmTmarker]