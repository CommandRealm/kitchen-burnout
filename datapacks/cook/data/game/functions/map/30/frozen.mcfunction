# Give effects
effect give @s slowness 3 255 true
effect give @s minecraft:jump_boost 3 128 true
effect give @s blindness 3 1 true

# Move snow
execute as @e[tag=frozen_blocks,distance=..3] at @s run tp @s ~ ~-.02 ~

# Lock position and rotation
summon marker ~ ~ ~ {Tags:["die_between_games","lock_frozen_pos"]}
execute store result entity @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1] Rotation[0] float 0.001 run scoreboard players get @s freeze_rot_x
execute store result entity @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1] Rotation[1] float 0.001 run scoreboard players get @s freeze_rot_y
execute store result entity @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1] Pos[0] double 0.01 run scoreboard players get @s freeze_pos_x
execute store result entity @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1] Pos[1] double 1 run scoreboard players get @s freeze_pos_y
execute store result entity @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1] Pos[2] double 0.01 run scoreboard players get @s freeze_pos_z
tp @s @e[type=marker,tag=lock_frozen_pos,sort=nearest,limit=1,distance=..500]
kill @e[type=marker,tag=lock_frozen_pos,limit=1,sort=nearest,distance=..5]

# End
scoreboard players remove @s freeze_time 1
execute if score @s freeze_time matches 0 run kill @e[tag=frozen_blocks,distance=..3]
execute if score @s freeze_time matches ..20 run effect clear @s slowness
execute if score @s freeze_time matches 0 run effect clear @s jump_boost
execute if score @s freeze_time matches ..40 run effect clear @s blindness