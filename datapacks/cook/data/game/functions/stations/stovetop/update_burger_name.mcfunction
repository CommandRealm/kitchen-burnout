# called to update the stovetop burger name
scoreboard players operation @s station_timer = @e[type=marker,tag=stovetop,sort=nearest,limit=1] station_timer

# First section
#  ::::::
# data modify entity @s[scores={station_timer=0..49}] CustomName set value '[{"text":":::::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::","color":"red"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=0..49}] CustomName set value '[{"text":":","color":"#0042ff","bold":true},{"text":":::::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=50..99}] CustomName set value '[{"text":"::","color":"#0042ff","bold":true},{"text":"::::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=100..149}] CustomName set value '[{"text":":::","color":"#0042ff","bold":true},{"text":":::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=150..199}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":"::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=200..249}] CustomName set value '[{"text":":::::","color":"#0042ff","bold":true},{"text":":","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=250..299}] CustomName set value '[{"text":"::::::","color":"#0042ff","bold":true},{"text":"::::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
# Second section
#  ::::::     --- ::::
data modify entity @s[scores={station_timer=300..349}] CustomName set value '[{"text":"::::::","color":"#0042ff","bold":true},{"text":":","color":"#0042ff","bold":true,"underlined":true},{"text":":::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=350..399}] CustomName set value '[{"text":"::::::","color":"#0042ff","bold":true},{"text":"::","color":"#0042ff","bold":true,"underlined":true},{"text":"::","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=400..449}] CustomName set value '[{"text":"::::::","color":"#0042ff","bold":true},{"text":":::","color":"#0042ff","bold":true,"underlined":true},{"text":":","color":"#12ff00","underlined":true},{"text":"::::::","color":"red"}]'
data modify entity @s[scores={station_timer=450..499}] CustomName set value '[{"text":"::::::","color":"#0042ff","bold":true},{"text":"::::","color":"#0042ff","bold":true,"underlined":true},{"text":"::::::","color":"red"}]'

# Third section
#  :::::: ---- :::: ---- ::::::

data modify entity @s[scores={station_timer=500..549}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":":","color":"#0042ff","bold":true},{"text":":::::","color":"red","underlined":false}]'
data modify entity @s[scores={station_timer=550..599}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":"::","color":"#0042ff","bold":true},{"text":"::::","color":"red","underlined":false}]'
data modify entity @s[scores={station_timer=600..649}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":":::","color":"#0042ff","bold":true},{"text":":::","color":"red","underlined":false}]'
data modify entity @s[scores={station_timer=650..699}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":"::::","color":"#0042ff","bold":true},{"text":"::","color":"red","underlined":false}]'
data modify entity @s[scores={station_timer=700..749}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":":::::","color":"#0042ff","bold":true},{"text":":","color":"red","underlined":false}]'
data modify entity @s[scores={station_timer=750..799}] CustomName set value '[{"text":"::::::::::","color":"#0042ff","bold":true},{"text":"::::::","color":"#0042ff","bold":true}]'






# data modify entity @s[scores={station_timer=650..699}] CustomName set value '[{"text":":::::","bold":true,"color":"#0042ff"},{"text":"::::","bold":true,"color":"#0042ff","underlined":false},{"text":":::","bold":true,"color":"#0042ff","underlined":false},{"text":":","color":"red"}]'
