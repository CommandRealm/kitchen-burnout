# Called to present the inputs of a cutting board in its input display with the current inputs completed and length
$data modify storage game:stations/cut inputs.completed set string entity @s data.cutting_board.inputs 0 $(completed)
data modify storage game:stations/cut inputs.completed set string storage game:stations/cut inputs.completed 0 -1
$data modify storage game:stations/cut inputs.remaining set string entity @s data.cutting_board.inputs $(completed) $(length)
data modify storage game:stations/cut inputs.current set string storage game:stations/cut inputs.remaining 0 1
$data modify storage game:stations/cut inputs.remaining set string storage game:stations/cut inputs.remaining 1 $(length)

execute align xyz run data modify entity @n[type=text_display,tag=cutting_board,dx=0,dy=1,dz=0] text set value [ \
    {storage:"game:stations/cut",nbt:"inputs.completed","color":"green"}, \
    {storage:"game:stations/cut",nbt:"inputs.current","color":"blue",underlined:true}, \
    {storage:"game:stations/cut",nbt:"inputs.remaining","color":"red"}]