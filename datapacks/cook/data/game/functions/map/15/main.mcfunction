effect give @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={map=15}] resistance 3 255 true
effect give @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={map=15}] night_vision 3 255 true
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={map=15}] at @s if block ~ ~-0.1 ~ bedrock run function game:map/15/warp
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={map=15}] at @s if block ~ ~-0.1 ~ sea_lantern if block ~ ~-1.1 ~ bedrock run function game:map/15/warp