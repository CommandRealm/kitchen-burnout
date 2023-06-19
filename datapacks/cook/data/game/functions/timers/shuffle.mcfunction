# Increment time in ticks
scoreboard players add $timer game_ticks 1

# Store bossbar to match value
scoreboard players operation $display_max_1 shuffle = $4 number
scoreboard players operation $display_max_1 shuffle *= $recipes settings
scoreboard players operation $display_max_2 shuffle = $4 number
scoreboard players operation $display_max_2 shuffle *= $recipes settings

scoreboard players operation $display_val_1 shuffle = $food_type_1 shuffle
scoreboard players operation $display_val_1 shuffle -= $1 number
scoreboard players operation $display_val_1 shuffle *= $recipes settings
scoreboard players operation $display_val_1 shuffle += $recipes_1 shuffle

scoreboard players operation $display_val_2 shuffle = $food_type_2 shuffle
scoreboard players operation $display_val_2 shuffle -= $1 number
scoreboard players operation $display_val_2 shuffle *= $recipes settings
scoreboard players operation $display_val_2 shuffle += $recipes_2 shuffle

execute store result bossbar game:progress_1 max run scoreboard players get $display_max_1 shuffle
execute store result bossbar game:progress_2 max run scoreboard players get $display_max_2 shuffle

execute store result bossbar game:progress_1 value run scoreboard players get $display_val_1 shuffle
execute store result bossbar game:progress_2 value run scoreboard players get $display_val_2 shuffle

# Do math for time display
scoreboard players operation $timer game_minutes = $timer game_ticks
scoreboard players operation $timer game_seconds = $timer game_ticks

scoreboard players operation $timer game_minutes /= $1200 number

scoreboard players operation $timer game_seconds %= $1200 number
scoreboard players operation $timer game_seconds /= $20 number

# Normal
execute if score $recipes settings matches 1 run bossbar set game:progress_1 name ["",{"translate":"Current Kitchen:","color":"dark_blue","underlined": false},{"text":" ","color":"dark_blue"},{"score":{"objective":"shuffle","name":"$food_type_1"},"color":"blue","bold":true},{"text":"/4","color":"blue","bold":true}]
execute if score $recipes settings matches 1 run bossbar set game:progress_2 name ["",{"translate":"Current Kitchen:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"score":{"objective":"shuffle","name":"$food_type_2"},"color":"red","bold":true},{"text":"/4","color":"red","bold":true}]
execute unless score $recipes settings matches 1 run bossbar set game:progress_1 name ["",{"translate":"Current Kitchen:","color":"dark_blue","underlined": false},{"text":" ","color":"dark_blue"},{"score":{"objective":"shuffle","name":"$food_type_1"},"color":"blue","bold":true},{"text":"/4","color":"blue","bold":true},{"text":" | ","color":"gray"},{"translate":"Completed Recipes: ","color":"dark_aqua"},{"score":{"objective":"shuffle","name":"$recipes_1"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"objective":"settings","name":"$recipes"},"color":"aqua"}]
execute unless score $recipes settings matches 1 run bossbar set game:progress_2 name ["",{"translate":"Current Kitchen:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"score":{"objective":"shuffle","name":"$food_type_2"},"color":"red","bold":true},{"text":"/4","color":"red","bold":true},{"text":" | ","color":"gray"},{"translate":"Completed Recipes: ","color":"dark_purple"},{"score":{"objective":"shuffle","name":"$recipes_1"},"color":"light_purple"},{"text":"/","color":"light_purple"},{"score":{"objective":"settings","name":"$recipes"},"color":"light_purple"}]
