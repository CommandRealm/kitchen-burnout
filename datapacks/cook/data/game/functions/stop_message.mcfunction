bossbar set game:timer visible false
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s run playsound block.note_block.chime master @s ~ ~ ~ 10 1.2
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s unless score $no_contest game matches 1 run title @s title ["",{"translate":"Time's Up!","color":"dark_aqua","bold":true}]
execute as @a[gamemode=adventure,tag=playing,tag=!tutorial] at @s if score $no_contest game matches 1 run title @s title ["",{"translate":"NO CONTEST","color":"gray","bold":true}]