# Called by a stovetop's text display to update the taco beefs's cooking timer
# First section
#  ::::
execute if score $cooking_display station_timer matches 0..49 run data modify entity @s text set value '[{"text":":","color":"#0042ff","bold":true},{"text":":::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 50..99 run data modify entity @s text set value '[{"text":"::","color":"#0042ff","bold":true},{"text":"::","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 100..149 run data modify entity @s text set value '[{"text":":::","color":"#0042ff","bold":true},{"text":":","bold":true,"color":"white"},{"text":"::::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 150..199 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":"::::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
# Second section
#  ::::     --- ::::
execute if score $cooking_display station_timer matches 200..249 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":":","color":"#0042ff","bold":true,"underlined":true},{"text":":::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 250..299 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":"::","color":"#0042ff","bold":true,"underlined":true},{"text":"::","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 300..349 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":":::","color":"#0042ff","bold":true,"underlined":true},{"text":":","color":"#12ff00","underlined":true},{"text":":","color":"red"}]'
execute if score $cooking_display station_timer matches 350..399 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true},{"text":"::::","color":"#0042ff","bold":true,"underlined":true},{"text":":","color":"red"}]'

# Ending
execute if score $cooking_display station_timer matches 400.. run kill @s