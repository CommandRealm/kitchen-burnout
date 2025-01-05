# Called by a stovetop's text display to update the other food's cooking timer
# First section
#  ::::
execute if score $cooking_display station_timer matches 0..49 run data modify entity @s text set value '[{"text":":","color":"#0042ff","bold":true,"underlined":true},{"text":":::","bold":true,"color":"#12ff00"}]'
execute if score $cooking_display station_timer matches 50..99 run data modify entity @s text set value '[{"text":"::","color":"#0042ff","bold":true,"underlined":true},{"text":"::","bold":true,"color":"#12ff00"}]'
execute if score $cooking_display station_timer matches 100..149 run data modify entity @s text set value '[{"text":":::","color":"#0042ff","bold":true,"underlined":true},{"text":":","bold":true,"color":"#12ff00"}]'
execute if score $cooking_display station_timer matches 150..199 run data modify entity @s text set value '[{"text":"::::","color":"#0042ff","bold":true,"underlined":true}]'

# Ending
execute if score $cooking_display station_timer matches 200.. run kill @s