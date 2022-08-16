# Set values
scoreboard players operation $calculate game_minutes = $calculate game_ticks
scoreboard players operation $calculate game_seconds = $calculate game_ticks
# Actually decaseconds
scoreboard players operation $calculate game_ticks %= $100 number
scoreboard players operation $calculate game_minutes /= $6000 number
scoreboard players operation $calculate game_seconds %= $6000 number
scoreboard players operation $calculate game_seconds /= $100 number
# Display times
## Normal
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches 10.. run data modify storage convert_pb time set value '["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]'
## <10 Decaseconds
execute if score $calculate game_seconds matches 10.. if score $calculate game_ticks matches ..9 run data modify storage convert_pb time set value '["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]'
## <10 Seconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches 10.. run data modify storage convert_pb time set value '["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]'
## <10 Seconds and <10 Decaseconds
execute if score $calculate game_seconds matches ..9 if score $calculate game_ticks matches ..9 run data modify storage convert_pb time set value '["",{"score":{"objective":"game_minutes","name":"$calculate"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"objective":"game_seconds","name":"$calculate"},"color":"red","bold":true},{"text":".0","color":"red","bold":true},{"score":{"objective":"game_ticks","name":"$calculate"},"color":"red","bold":true}]'