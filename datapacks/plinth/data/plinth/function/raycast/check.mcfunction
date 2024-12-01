# Runs specific checks for multiple blocks the raycast could pass through.
execute unless entity @s[tag=continue] if block ~ ~ ~ #plinth:air_like positioned ^ ^ ^.0625 run tag @s add continue
execute unless entity @s[tag=continue] if block ~ ~ ~ #plinth:slab_like run function plinth:raycast/crossable/slab
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:stairs run function plinth:raycast/crossable/stair_y
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:trapdoors run function plinth:raycast/crossable/trapdoor
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:doors run function plinth:raycast/crossable/door
execute unless entity @s[tag=continue] if block ~ ~ ~ #plinth:panes run function plinth:raycast/crossable/pane
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:walls run function plinth:raycast/crossable/wall
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:fences run function plinth:raycast/crossable/fence
execute unless entity @s[tag=continue] if block ~ ~ ~ #minecraft:fence_gates run function plinth:raycast/crossable/fence_gate