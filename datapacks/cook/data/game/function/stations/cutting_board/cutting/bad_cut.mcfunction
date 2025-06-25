# Called by a cutting board that has been victim of a bad cut
playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0.5

# Poison puffferfish
execute if data entity @s data{ingredient:"pufferfish"} run function game:stations/cutting_board/result/poison_pufferfish

return 1