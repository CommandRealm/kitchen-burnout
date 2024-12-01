execute at @s run summon marker ~ ~ ~ {Invulnerable:1b,Tags:["v_ray"]}
execute at @s run scoreboard players set @n[tag=v_ray] ray_distance 50
execute as @s run scoreboard players set @n[tag=v_ray] ray_velocity 500
execute at @s run tp @n[tag=v_ray] ~ ~1.6 ~ ~ ~

# ray_distance is in blocks.
# ray_velocity is in blocks per second multiplied by 100.