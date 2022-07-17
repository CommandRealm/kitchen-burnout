# Stop message for the competitive and shuffle modes
bossbar set game:progress_1 visible false
bossbar set game:progress_2 visible false
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s run playsound block.note_block.chime master @s ~ ~ ~ 10 1.2
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s unless score $no_contest game matches 1 run title @s title ["",{"translate":"Time!","color":"dark_aqua","bold":true}]
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s if score $no_contest game matches 1 run title @s title ["",{"translate":"NO CONTEST","color":"gray","bold":true}]