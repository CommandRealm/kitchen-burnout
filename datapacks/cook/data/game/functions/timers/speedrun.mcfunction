## UNUSED
scoreboard players add @s ticks 1
scoreboard players operation @s minutes = @s ticks
scoreboard players operation @s seconds = @s ticks

scoreboard players operation @s minutes /= $1200 minutes

scoreboard players operation @s seconds %= $1200 minutes
scoreboard players operation @s seconds /= $20 seconds

## Normal
execute unless entity @a[gamemode=adventure,team=playing,tag=has_key,tag=explained] as @a[gamemode=adventure,team=playing,tag=explained] at @s if score @s minutes matches 10.. if score @s seconds matches 10.. run title @s actionbar ["",{"translate":"Time:","color":"gold","underlined": true},{"text":" ","color":"gold"},{"score":{"objective":"minutes","name":"*"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"objective":"seconds","name":"*"},"color":"dark_aqua","bold":true}]
## 10+ Seconds; <10 Minutes
execute unless entity @a[gamemode=adventure,team=playing,tag=has_key,tag=explained] as @a[gamemode=adventure,team=playing,tag=explained] at @s if score @s minutes matches ..9 if score @s seconds matches 10.. run title @s actionbar ["",{"translate":"Time:","color":"gold","underlined": true},{"text":" ","color":"gold"},{"text":"0","color":"dark_aqua","bold":true},{"score":{"objective":"minutes","name":"*"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"objective":"seconds","name":"*"},"color":"dark_aqua","bold":true}]
## <10 Seconds; 10+ Minutes
execute unless entity @a[gamemode=adventure,team=playing,tag=has_key,tag=explained] as @a[gamemode=adventure,team=playing,tag=explained] at @s if score @s minutes matches 10.. if score @s seconds matches ..9 run title @s actionbar ["",{"translate":"Time:","color":"gold","underlined": true},{"text":" ","color":"gold"},{"score":{"objective":"minutes","name":"*"},"color":"dark_aqua","bold":true},{"text":":0","color":"dark_aqua","bold":true},{"score":{"objective":"seconds","name":"*"},"color":"dark_aqua","bold":true}]
## <10 Seconds; <10 Minutes
execute unless entity @a[gamemode=adventure,team=playing,tag=has_key,tag=explained] as @a[gamemode=adventure,team=playing,tag=explained] at @s if score @s minutes matches ..9 if score @s seconds matches ..9 run title @s actionbar ["",{"translate":"Time:","color":"gold","underlined": true},{"text":" ","color":"gold"},{"text":"0","color":"dark_aqua","bold":true},{"score":{"objective":"minutes","name":"*"},"color":"dark_aqua","bold":true},{"text":":0","color":"dark_aqua","bold":true},{"score":{"objective":"seconds","name":"*"},"color":"dark_aqua","bold":true}]