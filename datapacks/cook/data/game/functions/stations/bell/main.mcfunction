# Match model to button power state
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=true] run function game:stations/bell/pressed
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=false] run function game:stations/bell/unpressed