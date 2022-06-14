# Get time from worldborder in decaseconds (0.01 seconds) even though it says ticks
execute store result score $timer game_ticks run worldborder get
scoreboard players operation $timer game_ticks -= $58000000 number
# End game after almost two hours have passed
execute if score $timer game_ticks matches 1000000.. run scoreboard players set $winner shuffle -1

scoreboard players operation $timer game_minutes = $timer game_ticks
scoreboard players operation $timer game_seconds = $timer game_ticks
scoreboard players operation $decaseconds game_ticks = $timer game_ticks

scoreboard players operation $timer game_minutes /= $6000 number

scoreboard players operation $timer game_seconds %= $6000 number
scoreboard players operation $timer game_seconds /= $100 number

scoreboard players operation $decaseconds game_ticks %= $100 number

# Display times
## Normal
execute if score $timer game_seconds matches 10.. if score $decaseconds game_ticks matches 10.. run bossbar set game:timer name ["",{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
## <10 Decaseconds
execute if score $timer game_seconds matches 10.. if score $decaseconds game_ticks matches ..9 run bossbar set game:timer name ["",{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
## <10 Seconds
execute if score $timer game_seconds matches ..9 if score $decaseconds game_ticks matches 10.. run bossbar set game:timer name ["",{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]
## <10 Seconds and <10 Decaseconds
execute if score $timer game_seconds matches ..9 if score $decaseconds game_ticks matches ..9 run bossbar set game:timer name ["",{"translate":"Competitive Time: ","color":"dark_red","underlined": false},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$decaseconds"},"color":"red","bold":true}]