# called to update the stovetop burger name
scoreboard players operation @s station_timer = @e[type=marker,tag=stovetop,sort=nearest,limit=1] station_timer

# First section
#  ::::::
# data modify entity @s[scores={station_timer=0..49}] CustomName set value '[{"text":":::::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::","color":"red"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=0..49}] CustomName set value '[{"text":":","color":"#0042ff","bold":true},{"text":":::","bold":true,"color":"white"},{"text":":::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
data modify entity @s[scores={station_timer=50..99}] CustomName set value '[{"text":"::","color":"#0042ff","bold":true},{"text":"::","bold":true,"color":"white"},{"text":":::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
data modify entity @s[scores={station_timer=100..149}] CustomName set value '[{"text":":::","color":"#0042ff","bold":true},{"text":":","bold":true,"color":"white"},{"text":":::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
#data modify entity @s[scores={station_timer=200..249}] CustomName set value '[{"text":":::::","color":"#0042ff","bold":true},{"text":":","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
data modify entity @s[scores={station_timer=150..199}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":":::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
# Second section
#  ::::::     --- ::::
data modify entity @s[scores={station_timer=200..249}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":":","color":"#0042ff","bold":true,"underlined":true},{"text":"::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
data modify entity @s[scores={station_timer=250..299}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":"::","color":"#0042ff","bold":true,"underlined":true},{"text":":","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
data modify entity @s[scores={station_timer=300..349}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":":::","color":"#0042ff","bold":true,"underlined":true},{"text":":","color":"red"}]'





# data modify entity @s[scores={station_timer=650..699}] CustomName set value '[{"text":":::::","bold":true,"color":"#0042ff"},{"text":"::::","bold":true,"color":"#0042ff","underlined":false},{"text":":::","bold":true,"color":"#0042ff","underlined":false},{"text":":","color":"red"}]'
