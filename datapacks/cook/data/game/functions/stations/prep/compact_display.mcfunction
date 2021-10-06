# Reset ingredients when a new one is added
kill @e[type=armor_stand,tag=prep_slot,distance=..10]
execute if entity @s[tag=needs_prep_reset] run kill @e[type=armor_stand,tag=compact_display,distance=..10]
execute if entity @s[tag=needs_prep_reset] run tag @s remove needs_prep_reset

# Compact display for when not looking at prep station
function game:stations/prep/summon_existing_tagless
execute as @e[type=armor_stand,tag=compact_display,tag=!final_position] at @s run function game:stations/prep/tp/compact