# If we're holding a sword, cut. If not, invalid action

execute if data entity @s SelectedItem{id:"minecraft:iron_sword"} run function game:stations/cutting_board/cut
execute unless data entity @s SelectedItem{id:"minecraft:iron_sword"} run function game:stations/cutting_board/invalid_action