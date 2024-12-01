# Loads important functions.

# Tellraws
tellraw @a ["",{"text":"☀ Credits ☀","underlined":true,"color":"#0C68A1"},{"text":" (hover over names for details)","color":"#98DAFB","italic":true}]
tellraw @a ["",{"text":"→ Connop","color":"#F7F797","hoverEvent":{"action":"show_text","contents":[{"text":"The Main Coder & Compiler.","color":"#F7F797"}]}}]
tellraw @a ["",{"text":"→ LegoBro","color":"#F7F797","hoverEvent":{"action":"show_text","contents":[{"text":"Provided code for efficient raycasting.","color":"#F7F797"}]}}]
tellraw @a ["",{"text":"→ FalconReign","color":"#F7F797","hoverEvent":{"action":"show_text","contents":[{"text":"Made the locked container functions.","color":"#F7F797"}]}}]
tellraw @a {"text":" "}
tellraw @a ["",{"text":"Plinth 0.1","bold":true,"color":"#0C68A1"},{"text":" for ","color":"#98DAFB"},{"text":"[MC 1.19.1]","color":"#91FD91"},{"text":" has loaded","color":"#98DAFB"}]
tellraw @a {"text":"→ Plinth contains resources that are helpful for Minecraft map-making & coding.","color":"#F7F797","italic":true}

# Objectives
function plinth:math
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add x_block dummy
scoreboard objectives add y_block dummy
scoreboard objectives add z_block dummy
scoreboard objectives add x_old dummy
scoreboard objectives add y_old dummy
scoreboard objectives add z_old dummy
scoreboard objectives add x_velocity dummy
scoreboard objectives add y_velocity dummy
scoreboard objectives add z_velocity dummy
scoreboard objectives add ray_distance dummy
scoreboard objectives add ray_display dummy
scoreboard objectives add ray_velocity dummy
scoreboard objectives add position dummy
scoreboard objectives add position2 dummy
scoreboard objectives add iterations dummy
scoreboard objectives add decimal_iterations dummy
scoreboard objectives add tick_iterations dummy
scoreboard objectives add extra_iteration dummy
scoreboard objectives add calculate dummy