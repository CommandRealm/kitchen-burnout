# Called when you try to add an ingredient that is already there

# Title
title @s title [{"text":""}]
title @s subtitle [{"text":"⚠ ","color":"yellow"},{"translate":"This ingredient is already there!","color":"red"}]

playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0

# Add tag so players don't lose held items
tag @s add temporary_place_tag