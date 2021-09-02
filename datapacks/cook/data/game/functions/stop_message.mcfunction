bossbar set game:timer visible false
execute as @a[gamemode=adventure,tag=playing] at @s run playsound block.note_block.chime master @s ~ ~ ~ 10 1.2
execute as @a[gamemode=adventure,tag=playing] at @s run title @s title ["",{"text":"Time's Up!","color":"dark_aqua","bold":true}]