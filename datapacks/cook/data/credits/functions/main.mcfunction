function credits:pl
function credits:calverin
function credits:hippeh
function credits:pug/pug


scoreboard players add $time credits 1
execute if score $time credits matches 140.. run function credits:cycle_armor_stand
execute as @a[gamemode=adventure,x=37,y=67,z=37,distance=..15] at @s if entity @e[type=armor_stand,tag=show_details,distance=..7] anchored eyes run function credits:raycast


# modifying knad's legs
data merge entity @e[type=armor_stand,tag=knad,limit=1] {Pose:{RightLeg:[0.0f,20.0f,0.0f]}}


# modifying pinkessi's armor stand
# execute as @e[type=armor_stand,tag=pinkessi] at @s store result score @s calculate run data get entity @s Rotation[0]
# scoreboard players add @e[type=armor_stand,tag=pinkessi] calculate 180
# execute as @e[type=armor_stand,tag=pinkessi] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s calculate


execute as @e[type=armor_stand,tag=pinkessi] at @s store result score @s calculate run data get entity @s Pose.RightLeg[1]
scoreboard players add @e[type=armor_stand,tag=pinkessi] calculate 180
execute as @e[type=armor_stand,tag=pinkessi] at @s store result entity @s Pose.RightLeg[1] float 1 run scoreboard players get @s calculate

execute as @e[type=armor_stand,tag=pinkessi] at @s store result score @s calculate run data get entity @s Pose.LeftLeg[1]
scoreboard players add @e[type=armor_stand,tag=pinkessi] calculate 180
execute as @e[type=armor_stand,tag=pinkessi] at @s store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s calculate


execute as @e[type=armor_stand,tag=pinkessi] at @s store result score @s calculate run data get entity @s Pose.RightLeg[0]
scoreboard players operation @e[type=armor_stand,tag=pinkessi] calculate *= $-1 number
execute as @e[type=armor_stand,tag=pinkessi] at @s store result entity @s Pose.RightLeg[0] float 1 run scoreboard players get @s calculate

execute as @e[type=armor_stand,tag=pinkessi] at @s store result score @s calculate run data get entity @s Pose.LeftLeg[0]
scoreboard players operation @e[type=armor_stand,tag=pinkessi] calculate *= $-1 number
execute as @e[type=armor_stand,tag=pinkessi] at @s store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players get @s calculate


# if animations need to start
execute as @e[type=armor_stand,tag=knad,limit=1] at @s if score $knad calculate = @s knad.timer run function credits:knad/resume
execute as @e[type=armor_stand,tag=joel,limit=1] at @s if score $joel calculate = @s joel.new.timer run function credits:joel/resume
execute as @e[type=armor_stand,tag=pinkessi,limit=1] at @s if score $pinkessi calculate = @s model.new.timer run function credits:pinkessi/resume




scoreboard players operation $knad calculate = @e[type=armor_stand,tag=knad,limit=1] knad.timer
scoreboard players operation $joel calculate = @e[type=armor_stand,tag=joel,limit=1] joel.new.timer
scoreboard players operation $pinkessi calculate = @e[type=armor_stand,tag=pinkessi,limit=1] model.new.timer