execute as @e[tag=crmTcolumnup] at @s run fill ~ ~ ~ ~ ~5 ~ minecraft:sponge replace minecraft:air
execute as @e[tag=crmTcolumnup] at @s run tp @s ~ ~-300 ~
kill @e[tag=crmTcolumnup]
execute as @e[tag=crmTcolumndown] at @s run fill ~ ~ ~ ~ ~-5 ~ minecraft:sponge replace minecraft:air
execute as @e[tag=crmTcolumndown] at @s run tp @s ~ ~-300 ~
kill @e[tag=crmTcolumndown]