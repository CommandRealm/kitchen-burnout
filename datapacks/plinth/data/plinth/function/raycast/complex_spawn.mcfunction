execute at @s run summon marker ~ ~ ~ {Invulnerable:1b,Tags:["complex_ray"]}
execute at @s run scoreboard players set @n[tag=complex_ray] ray_distance 50
execute at @s run tp @n[tag=complex_ray] ~ ~1.6 ~ ~ ~
execute as @e[tag=complex_ray] at @s run function plinth:raycast/complex_sample
kill @e[tag=complex_ray]

# ray_distance is in blocks.