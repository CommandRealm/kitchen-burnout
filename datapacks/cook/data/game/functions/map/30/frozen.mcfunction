effect give @s slowness 3 255 true
effect give @s minecraft:jump_boost 3 128 true
effect give @s blindness 3 1 true

execute as @e[tag=frozen_blocks,distance=..3] at @s run tp @s ~ ~-.01 ~

scoreboard players remove @s freeze_time 1
execute if score @s freeze_time matches 0 run kill @e[tag=frozen_blocks,distance=..3]
execute if score @s freeze_time matches 0 run effect clear @s slowness
execute if score @s freeze_time matches 0 run effect clear @s jump_boost
execute if score @s freeze_time matches ..40 run effect clear @s blindness