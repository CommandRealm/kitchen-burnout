# Pregame countdown running




# Counting down
scoreboard players remove $countdown pregame 1



# Convert to seconds for timer (also will play the sound)
scoreboard players remove $second pregame 1
execute if score $second pregame matches ..0 run function lobby:pregame/countdown_second_over



# Check players on and readied
execute store result score $ready_players pregame if entity @a[scores={ready=1..}]
execute if entity @a[tag=admin] run scoreboard players add $ready_players pregame 1
execute store result score $players_on pregame if entity @a

# Make players appear/disappear off of sidebar
scoreboard players reset @a[scores={ready=0}] readied_players
scoreboard players set @a[scores={ready=1}] readied_players 1



# Countdown ending
execute if score $ready_players pregame matches ..1 run function lobby:pregame/countdown_end

execute if score $countdown pregame matches 0 run function lobby:pregame/countdown_hit_0


# has if statement to make sure it doesn't run if the countdown is cancelled.
execute if score $countdown pregame matches 0.. run title @a[scores={ready=0},gamemode=adventure] subtitle [{"translate":"to join the game . . .","color":"red"}]
execute if score $countdown pregame matches 1.. run title @a[scores={ready=1},gamemode=adventure] subtitle [{"translate":"till the game begins. ","color":"gray"},{"text":"(","color":"white","bold":true},{"score":{"objective":"pregame","name":"$ready_players"},"color":"gray","bold":false},{"text":"/","color":"white","bold":false},{"score":{"objective":"pregame","name":"$players_on"},"color":"gray","bold":false},{"text":")","color":"white","bold":true}]
execute if score $countdown pregame matches 0 run title @a[scores={ready=1},gamemode=adventure] subtitle ""


