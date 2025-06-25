# Called to present the inputs of a cutting board in its input display
#> Takes in the number of completed inputs (and +1) and the total length of the input sequence
data remove storage game:stations/cut text
$data modify storage game:stations/cut text.completed set string entity @s data.cutting_board.inputs 0 $(completed)
$data modify storage game:stations/cut text.remaining set string entity @s data.cutting_board.inputs $(completed) $(length)
data modify storage game:stations/cut text.current set string storage game:stations/cut text.remaining 0 1
$data modify storage game:stations/cut text.remaining set string entity @s data.cutting_board.inputs $(completed_plus_1) $(length)

# Store the current input in the cutting board
data modify entity @s data.cutting_board.current_input set from storage game:stations/cut text.current

# Apply the text
execute align xyz run data modify entity @n[type=text_display,tag=cutting_board,dx=0,dy=1,dz=0] text set value [ \
    {"text":"\U0001F5E1\n\n","color":"red"}, \
    {storage:"game:stations/cut",nbt:"text.completed","color":"blue"}, \
    {storage:"game:stations/cut",nbt:"text.current","color":"green",underlined:true}, \
    {storage:"game:stations/cut",nbt:"text.remaining","color":"gray"}]
