tag @s add temporary_tag
scoreboard players reset @s has_left
execute if entity @s[tag=playing,tag=!tutorial] if entity @a[gamemode=adventure,tag=playing,tag=!tutorial,tag=!temporary_tag] run scoreboard players reset @s has_joined
execute if entity @s[tag=!playing,tag=!tutorial] run scoreboard players reset @s has_joined
execute if entity @s[tag=playing,tag=tutorial] run scoreboard players reset @s has_joined
tag @a remove temporary_tag