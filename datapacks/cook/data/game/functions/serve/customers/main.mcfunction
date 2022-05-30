# Summon new customers
execute store result score @s customers if entity @e[type=villager,tag=customer,distance=..100]
execute if score @s customers matches ..2 unless entity @e[type=villager,tag=customer,tag=update_line_pos,distance=..100] run function game:serve/customers/summon
# Move customers
execute as @e[type=villager,tag=customer,tag=update_line_pos] at @s run function game:serve/customers/move
