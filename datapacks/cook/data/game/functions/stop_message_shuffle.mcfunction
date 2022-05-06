bossbar set game:progress_1 visible false
bossbar set game:progress_2 visible false
execute as @a[gamemode=adventure,tag=playing] at @s run playsound block.note_block.chime master @s ~ ~ ~ 10 1.2
execute as @a[gamemode=adventure,tag=playing] at @s run title @s title ["",{"translate":"Time!","color":"dark_aqua","bold":true}]