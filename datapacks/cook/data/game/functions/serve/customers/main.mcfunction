# Summon new customers
execute store result score @s customers if entity @e[type=villager,tag=customer,distance=..100]
execute if score @s[tag=tutorial] customers matches ..1 unless entity @e[type=villager,tag=customer,tag=update_line_pos,distance=..100] run function game:serve/customers/summon
execute if score @s[tag=!tutorial] customers matches ..2 unless score $mode settings matches 2 unless entity @e[type=villager,tag=customer,tag=update_line_pos,distance=..100] unless score $competitive customers matches 3.. run function game:serve/customers/summon
execute if score @s[tag=!tutorial] customers matches 0 if score $mode settings matches 2 unless entity @e[type=villager,tag=customer,tag=update_line_pos,distance=..100] run function game:serve/customers/summon
# Move customers
execute as @e[type=villager,tag=customer,tag=update_line_pos] at @s run function game:serve/customers/move
# Customer blurbs
scoreboard players operation @s game_ticks = $const game_ticks
scoreboard players operation @s game_ticks %= $200 number
execute if score @s game_ticks matches 0 as @e[type=villager,tag=customer,tag=has_blurb,distance=..100] run data merge entity @s {CustomName:"",CustomNameVisible:0b}
execute if score @s game_ticks matches 0 as @e[type=villager,tag=customer,tag=has_blurb,distance=..100] run tag @s remove has_blurb
execute if score @s game_ticks matches 0 run scoreboard players set $mod random 3
execute if score @s game_ticks matches 0 run function random:random
execute if score @s game_ticks matches 0 if score $output random matches 0 as @e[type=villager,tag=customer,distance=..100,sort=random,limit=1] at @s run function game:serve/customers/blurb