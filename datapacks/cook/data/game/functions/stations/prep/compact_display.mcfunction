# Compact display for when not looking at prep station
execute unless entity @e[type=armor_stand,tag=compact_display] run function game:stations/prep/summon_existing_tagless
execute as @e[type=armor_stand,tag=compact_display,tag=!final_position] at @s run function game:stations/prep/tp/compact