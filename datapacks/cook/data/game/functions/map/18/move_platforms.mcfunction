tag @e[type=armor_stand,tag=rotating_platform] add move_block
execute as @e[type=armor_stand,tag=rotating_platform,tag=platform_n,tag=move_block] at @e[type=marker,tag=rotating_platform,tag=platform_n] run function game:map/18/move_block
execute as @e[type=armor_stand,tag=rotating_platform,tag=platform_e,tag=move_block] at @e[type=marker,tag=rotating_platform,tag=platform_e] run function game:map/18/move_block
execute as @e[type=armor_stand,tag=rotating_platform,tag=platform_s,tag=move_block] at @e[type=marker,tag=rotating_platform,tag=platform_s] run function game:map/18/move_block
execute as @e[type=armor_stand,tag=rotating_platform,tag=platform_w,tag=move_block] at @e[type=marker,tag=rotating_platform,tag=platform_w] run function game:map/18/move_block