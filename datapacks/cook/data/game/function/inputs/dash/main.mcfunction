tag @a[tag=!dashed,predicate=!game:inputs/jump] remove jumping

execute as @s[tag=!dashed,tag=!jumping,predicate=game:in_air,predicate=game:inputs/jump] if block ~ ~-0.5 ~ #minecraft:air run function game:inputs/dash/activate

execute as @s[tag=dashed,predicate=game:on_ground] run tag @s remove dashed

tag @a[tag=!dashed,predicate=game:inputs/jump] add jumping 