##called to update the stovetop burger name
scoreboard players operation @s station_timer = @e[type=area_effect_cloud,tag=stovetop,sort=nearest,limit=1] station_timer

##First section
## :::::
data modify entity @s[scores={station_timer=0..49}] CustomName set value '[{"text":":","color":"#0042ff","bold":true,"underlined":true},{"text":":::","bold":true,"color":"#12ff00"}]'
data modify entity @s[scores={station_timer=50..99}] CustomName set value '[{"text":"::","color":"#0042ff","bold":true,"underlined":true},{"text":"::","bold":true,"color":"#12ff00"}]'
data modify entity @s[scores={station_timer=100..149}] CustomName set value '[{"text":":::","color":"#0042ff","bold":true,"underlined":true},{"text":":","bold":true,"color":"#12ff00"}]'
data modify entity @s[scores={station_timer=150..199}] CustomName set value '[{"text":"::::","color":"#0042ff","bold":true,"underlined":true}]'



