playsound block.note_block.didgeridoo master @a ~ ~ ~ 1 0.25

# Unpress bell
execute as @e[type=armor_stand,tag=bell,tag=bell_pressed,limit=1,sort=nearest,distance=..500] at @s run function game:stations/bell/unpress