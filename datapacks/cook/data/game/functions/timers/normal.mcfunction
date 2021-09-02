# Decrement time in ticks
scoreboard players remove $timer game_ticks 1

# Store bossbar to match value
execute store result bossbar game:timer value run scoreboard players get $timer game_ticks

# Do math for time display
scoreboard players operation $timer game_minutes = $timer game_ticks
scoreboard players operation $timer game_seconds = $timer game_ticks

scoreboard players operation $timer game_minutes /= $1200 number

scoreboard players operation $timer game_seconds %= $1200 number
scoreboard players operation $timer game_seconds /= $20 number

## Normal
execute if score $timer game_minutes matches 10.. if score $timer game_seconds matches 10.. run bossbar set game:timer name ["",{"text":"Time Left:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true}]
## 10+ Seconds; <10 Minutes
execute if score $timer game_minutes matches ..9 if score $timer game_seconds matches 10.. run bossbar set game:timer name ["",{"text":"Time Left:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"text":"0","color":"red","bold":true},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true}]
## <10 Seconds; 10+ Minutes
execute if score $timer game_minutes matches 10.. if score $timer game_seconds matches ..9 run bossbar set game:timer name ["",{"text":"Time Left:","color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true}]
## <10 Seconds; <10 Minutes
execute if score $timer game_minutes matches ..9 if score $timer game_seconds matches ..9 run bossbar set game:timer name ["",{"text":"Time Left:" ,"color":"dark_red","underlined": false},{"text":" ","color":"dark_red"},{"text":"0","color":"red","bold":true},{"score":{"objective":"game_minutes","name":"$timer"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$timer"},"color":"red","bold":true}]