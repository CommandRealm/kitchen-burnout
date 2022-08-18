scoreboard players add @s tnt_launchpad 1
# Normal chargeup
execute if score @s tnt_launchpad matches 1..10 run title @s title ["",{"text":"|||||||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 11..20 run title @s title ["",{"text":"|","color":"red","bold":true},{"text":"||||||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 21..30 run title @s title ["",{"text":"||","color":"red","bold":true},{"text":"|||||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 31..40 run title @s title ["",{"text":"|||","color":"red","bold":true},{"text":"||||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 41..50 run title @s title ["",{"text":"||||","color":"red","bold":true},{"text":"|||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 51..60 run title @s title ["",{"text":"|||||","color":"yellow","bold":true},{"text":"||||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 61..70 run title @s title ["",{"text":"||||||","color":"yellow","bold":true},{"text":"|||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 71..80 run title @s title ["",{"text":"|||||||","color":"yellow","bold":true},{"text":"||||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 81..90 run title @s title ["",{"text":"||||||||","color":"yellow","bold":true},{"text":"|||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 91..100 run title @s title ["",{"text":"|||||||||","color":"green","bold":true},{"text":"||||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 101..110 run title @s title ["",{"text":"||||||||||","color":"green","bold":true},{"text":"|||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 111..120 run title @s title ["",{"text":"|||||||||||","color":"green","bold":true},{"text":"||||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 121..130 run title @s title ["",{"text":"||||||||||||","color":"green","bold":true},{"text":"|||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 131..140 run title @s title ["",{"text":"|||||||||||||","color":"blue","bold":true},{"text":"||","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 141..150 run title @s title ["",{"text":"||||||||||||||","color":"blue","bold":true},{"text":"|","color":"gray","bold":true}]
execute if score @s tnt_launchpad matches 151..160 run title @s title ["",{"text":"|||||||||||||||","color":"blue","bold":true}]
# Effects
execute if score @s tnt_launchpad matches 20..240 run title @s subtitle ["",{"translate":"Release ","color":"gray"},{"keybind":"key.sneak","color":"dark_gray"},{"translate":" to launch!","color":"gray"}]
execute if score @s tnt_launchpad matches 1..10 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 0.5 0
execute if score @s tnt_launchpad matches 11..20 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 0.6 0
execute if score @s tnt_launchpad matches 21..30 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 0.7 0
execute if score @s tnt_launchpad matches 31..40 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 0.8 0
execute if score @s tnt_launchpad matches 41..50 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.0 0
execute if score @s tnt_launchpad matches 51..60 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.1 0
execute if score @s tnt_launchpad matches 61..70 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.2 0
execute if score @s tnt_launchpad matches 71..80 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.3 0
execute if score @s tnt_launchpad matches 81..90 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.4 0
execute if score @s tnt_launchpad matches 91..100 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.5 0
execute if score @s tnt_launchpad matches 101..110 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.6 0
execute if score @s tnt_launchpad matches 111..120 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.7 0
execute if score @s tnt_launchpad matches 121..130 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.8 0
execute if score @s tnt_launchpad matches 131..140 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 1.9 0
execute if score @s tnt_launchpad matches 141..150 if score $even game_ticks matches 1 run playsound block.note_block.bass master @s ~ ~ ~ 10 2.0 0
# Max charge
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches ..3 run title @s title ["",{"text":"|||||||||||||||","color":"red","bold":true}]
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches 1 run playsound block.note_block.harp master @s ~ ~ ~ 1 2 .1
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches 3 run playsound block.note_block.harp master @s ~ ~ ~ 1 2 .1
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches 4..8 run title @s title ["",{"text":"|||||||||||||||","color":"blue","bold":true}]
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches 5 run playsound block.note_block.bass master @s ~ ~ ~ 1 2 .1
execute if score @s tnt_launchpad matches 151.. if score $flashing game_ticks matches 7 run playsound block.note_block.bass master @s ~ ~ ~ 1 2 .1
# Limit
execute if score @s tnt_launchpad matches 240.. run function game:map/5/launch