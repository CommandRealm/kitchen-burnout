# Increment time in ticks
scoreboard players add $timer game_ticks 1

# Store bossbar to match value
execute store result bossbar game:progress_1 value run scoreboard players get $food_type_1 shuffle
execute store result bossbar game:progress_2 value run scoreboard players get $food_type_2 shuffle

# Do math for time display
scoreboard players operation $timer game_minutes = $timer game_ticks
scoreboard players operation $timer game_seconds = $timer game_ticks

scoreboard players operation $timer game_minutes /= $1200 number

scoreboard players operation $timer game_seconds %= $1200 number
scoreboard players operation $timer game_seconds /= $20 number

# Normal
bossbar set game:progress_1 name ["",{"translate":"Current Kitchen:","color":"dark_blue","underlined": false},{"text":" ","color":"dark_blue"},{"score":{"objective":"shuffle","name":"$food_type_1"},"color":"blue","bold":true},{"text":"/4","color":"blue","bold":true}]
bossbar set game:progress_2 name ["",{"translate":"Current Kitchen:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"score":{"objective":"shuffle","name":"$food_type_2"},"color":"red","bold":true},{"text":"/4","color":"red","bold":true}]
