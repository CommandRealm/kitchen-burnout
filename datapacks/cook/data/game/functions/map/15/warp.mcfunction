tp @s[tag=!team_2] 2160 88 1984 -90 5
tp @s[tag=team_2] 12160 88 1984 -90 5
execute if entity @s[tag=!team_2] positioned 2160 88 1984 run playsound entity.enderman.teleport master @s ~ ~ ~ 1000 1.3
execute if entity @s[tag=team_2] positioned 12160 88 1984 run playsound entity.enderman.teleport master @s ~ ~ ~ 1000 1.3