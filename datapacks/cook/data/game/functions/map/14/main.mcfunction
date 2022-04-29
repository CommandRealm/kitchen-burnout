# Avocado Pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=!team_2] at @s if entity @s[x=1964,y=54,z=1542.5,dx=3,dy=3,dz=3] run tag @s add in_pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=team_2] at @s if entity @s[x=11964,y=54,z=1542.5,dx=3,dy=3,dz=3] run tag @s add in_pipe
# Fish Pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=!team_2] at @s if entity @s[x=1957,y=45,z=1486,dx=2,dy=2,dz=3] run tag @s add in_pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=team_2] at @s if entity @s[x=11957,y=45,z=1486,dx=2,dy=2,dz=3] run tag @s add in_pipe
# Wasabi Pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=!team_2] at @s if entity @s[x=1965,y=54,z=1444,dx=2,dy=2,dz=1.5] run tag @s add in_pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=team_2] at @s if entity @s[x=11965,y=54,z=1444,dx=2,dy=2,dz=1.5] run tag @s add in_pipe
# Central Pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=!team_2] at @s if entity @s[x=1967.5,y=48,z=1493,dx=3,dy=2,dz=2] run tag @s add in_pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=team_2] at @s if entity @s[x=11967.5,y=48,z=1493,dx=3,dy=2,dz=2] run tag @s add in_pipe

# In Pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=in_pipe,tag=!team_2] at @s run function game:map/14/in_pipe
execute as @a[tag=playing,gamemode=adventure,scores={map=14},tag=in_pipe,tag=team_2] at @s run function game:map/14/in_pipe_2