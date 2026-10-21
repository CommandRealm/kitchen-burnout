# Called when a player left clicks a stovetop

# Flipping food
execute as @s[tag=cooking,tag=flippable] unless score @s click_cooldown matches 1.. run function game:stations/stovetop/flip/start

data remove entity @s attack