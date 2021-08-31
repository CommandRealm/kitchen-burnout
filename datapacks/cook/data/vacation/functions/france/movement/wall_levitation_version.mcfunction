# Wall Climb
effect clear @s[scores={paris_sneaking=0}] levitation
tag @s[tag=paris_was_sneaking,scores={paris_sneaking=0}] remove paris_wall_jumping

execute as @s[scores={paris_stamina=1..,paris_sneaking=1..}] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run effect give @s levitation 1 255 true
execute as @s[scores={paris_stamina=1..,paris_sneaking=0}] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run effect give @s slow_falling 1 2 true
execute as @s[tag=paris_was_sneaking,scores={paris_stamina=1..39,paris_sneaking=0},tag=paris_wall_jumping] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run effect clear @s levitation
execute as @s[tag=paris_was_sneaking,scores={paris_stamina=1..39,paris_sneaking=0},tag=!paris_wall_jumping] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run effect give @s levitation 1 105 true
execute as @s[tag=paris_was_sneaking,scores={paris_stamina=1..39,paris_sneaking=0},tag=!paris_wall_jumping] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run scoreboard players remove @s paris_stamina 10
execute as @s[tag=paris_was_sneaking,scores={paris_stamina=1..39,paris_sneaking=0},tag=!paris_wall_jumping] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air run tag @s add paris_wall_jumping
execute as @s[scores={paris_stamina=1..,paris_sneaking=1..}] at @s positioned ~ ~1 ~ unless block ^ ^ ^1 air if block ~ ~-1.1 ~ air run scoreboard players remove @s paris_stamina 1
execute unless score @s paris_stamina matches 40 unless block ~ ~-1 ~ air run scoreboard players set @s paris_stamina 40

# Wall Run
execute as @s[scores={paris_stamina=1..,paris_sneaking=0}] at @s positioned ~ ~1 ~ if block ^1 ^ ^1 minecraft:andesite if block ~ ~-1.1 ~ air if block ~ ~-2.1 ~ air positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~-2.25 ~ {NoGravity:1b,Passengers:[{id:"minecraft:shulker",Color:3,Silent:1b,Tags:["paris_climbing","paris_wall_run"],NoAI:1b,ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b}]}],Tags:["paris_climbing"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @s[scores={paris_stamina=1..,paris_sneaking=0}] at @s positioned ~ ~1 ~ if block ^-1 ^ ^1 minecraft:andesite if block ~ ~-1.1 ~ air if block ~ ~-2.1 ~ air positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~-2.25 ~ {NoGravity:1b,Passengers:[{id:"minecraft:shulker",Color:3,Silent:1b,Tags:["paris_climbing","paris_wall_run"],NoAI:1b,ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b}]}],Tags:["paris_climbing"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @s[scores={paris_stamina=1..,paris_sneaking=0}] at @s positioned ~ ~1 ~ if block ^1 ^ ^1 minecraft:andesite if block ~ ~-1.1 ~ air if block ~ ~-2.1 ~ air positioned ~ ~-1 ~ if entity @e[type=shulker,tag=paris_wall_run,distance=..2] run scoreboard players remove @s paris_stamina 2
execute as @s[scores={paris_stamina=1..,paris_sneaking=0}] at @s positioned ~ ~1 ~ if block ^-1 ^ ^1 minecraft:andesite if block ~ ~-1.1 ~ air if block ~ ~-2.1 ~ air positioned ~ ~-1 ~ if entity @e[type=shulker,tag=paris_wall_run,distance=..2] run scoreboard players remove @s paris_stamina 2

# Was Sneaking
tag @s remove paris_was_sneaking
execute as @s[scores={paris_sneaking=1..}] run tag @s add paris_was_sneaking