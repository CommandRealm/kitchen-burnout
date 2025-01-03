# Called by a cutting board that has been victim of a bad cut

scoreboard players add @s click_cooldown 3
scoreboard players add @s station 5

# Poison puffferfish
execute if data entity @n[type=item_display,tag=cutting_board,distance=..0.5] item.components."minecraft:custom_data"{ingredient:"pufferfish"} run function game:stations/cutting_board/cut/poison_pufferfish

return 1