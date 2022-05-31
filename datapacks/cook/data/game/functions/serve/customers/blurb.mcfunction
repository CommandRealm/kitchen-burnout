# Pick a random blurb
scoreboard players set $mod random 40
function random:random
execute if score $output random matches 0 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Why is this taking so long?","color":"green"}]'}
execute if score $output random matches 1 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I\'m starving...","color":"green"}]'}
execute if score $output random matches 2 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Anyone want to play Stone, Paper, Shears?","color":"green"}]'}
execute if score $output random matches 3 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"It\'s like waiting to get into Would You Rather","color":"green"}]'}
execute if score $output random matches 4 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Fueron a matar a la vaca o que?","color":"green"}]'}
execute if score $output random matches 5 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Feed me.","color":"green"}]'}
execute if score $output random matches 6 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"It smells so good!","color":"green"}]'}
execute if score $output random matches 7 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Cheese...","color":"green"}]'}
execute if score $output random matches 8 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Hurry up already!","color":"green"}]'}
execute if score $output random matches 9 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"You wouldn\'t like me when I\'m hangry","color":"green"}]'}
execute if score $output random matches 10 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Where\'s your manager?","color":"green"}]'}
execute if score $output random matches 11 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I better get a discount","color":"green"}]'}
execute if score $output random matches 12 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I could eat a horse right now","color":"green"}]'}
execute if score $output random matches 13 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Supply chain issue?","color":"green"}]'}
execute if score $output random matches 14 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I haven\'t waited this long since I was at the DMV","color":"green"}]'}
execute if score $output random matches 15 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Can I get fries with that","color":"green"}]'}
execute if score $output random matches 16 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Can I get some ketchup","color":"green"}]'}
execute if score $output random matches 17 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"They\'ll blame this on the creepers","color":"green"}]'}
execute if score $output random matches 18 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Best food in town","color":"green"}]'}
execute if score $output random matches 19 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Y\'all got any vegan options?","color":"green"}]'}
execute if score $output random matches 20 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Puts you in the mood for a nice walk in the park","color":"green"}]'}
execute if score $output random matches 21 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Is this food safe for goats?","color":"green"}]'}
execute if score $output random matches 22 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I don\'t care if it\'s free, I just want my bread without gluten!","color":"green"}]'}
execute if score $output random matches 23 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Can I get ummmmmmmmmmmmm","color":"green"}]'}
execute if score $output random matches 24 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Go little chef person! Go!","color":"green"}]'}
execute if score $output random matches 25 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I\'m back for seconds!","color":"green"}]'}
execute if score $output random matches 26 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I\'m here to pickup an online order","color":"green"}]'}
execute if score $output random matches 27 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Ayo! This food slaps","color":"green"}]'}
execute if score $output random matches 28 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Can I get a refill","color":"green"}]'}
execute if score $output random matches 29 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Do you want a tip or something?","color":"green"}]'}
execute if score $output random matches 30 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"This place is a culinary catastrophe!","color":"green"}]'}
execute if score $output random matches 31 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I saw some dysfunctional construction on my way here","color":"green"}]'}
execute if score $output random matches 32 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Look at that cook on the clock!","color":"green"}]'}
execute if score $output random matches 33 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Food for thought: chicken, apple pie, toast...","color":"green"}]'}
execute if score $output random matches 34 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"No your face is a health code violation!","color":"green"}]'}
execute if score $output random matches 35 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I\'m somewhat enjoying it","color":"green"}]'}
execute if score $output random matches 36 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Is your refrigerator running?","color":"green"}]'}
execute if score $output random matches 37 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"I\'d rather have just eaten from the dumpster like last week","color":"green"}]'}
execute if score $output random matches 38 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"Heurmmm...","color":"green"}]'}
execute if score $output random matches 39 run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"translate":"My stomach won\'t feed itself!","color":"green"}]'}

# Herrrrrm
playsound entity.villager.ambient master @a ~ ~ ~ 3 1.1
# For removing blurb later
tag @s add has_blurb