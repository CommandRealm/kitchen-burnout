# Main function to actually give a cosmetic
scoreboard players reset $success random
scoreboard players set $mod random 8
function random:random
execute if score $output random matches 0..1 unless entity @s[tag=hat_4,tag=hat_5,tag=hat_6,tag=hat_7,tag=hat_8,tag=hat_9,tag=hat_10] run function lobby:cosmetics/hats/give
execute if score $output random matches 2..4 unless entity @s[tag=knife_6,tag=knife_7,tag=knife_8,tag=knife_9,tag=knife_10,tag=knife_11,tag=knife_12,tag=knife_13,tag=knife_14,tag=knife_15,tag=knife_16,tag=knife_17,tag=knife_18,tag=knife_19] run function lobby:cosmetics/knives/give
execute if score $output random matches 5..7 unless entity @s[tag=bell_10,tag=bell_11,tag=bell_12,tag=bell_13,tag=bell_14,tag=bell_15,tag=bell_16,tag=bell_17,tag=bell_18] run function lobby:cosmetics/bell_sounds/give

# Mark us as having all cosmetics
tag @s[tag=hat_4,tag=hat_5,tag=hat_6,tag=hat_7,tag=hat_8,tag=hat_9,tag=hat_10,tag=knife_6,tag=knife_7,tag=knife_8,tag=knife_9,tag=knife_10,tag=knife_11,tag=knife_12,tag=knife_13,tag=knife_14,tag=knife_15,tag=knife_16,tag=knife_17,tag=knife_18,tag=knife_19,tag=bell_10,tag=bell_11,tag=bell_12,tag=bell_13,tag=bell_14,tag=bell_15,tag=bell_16,tag=bell_17,tag=bell_18] add all_cosmetics

# If we got a cosmetic we already had and still don't have all of them, try again
execute if entity @s[tag=!all_cosmetics] unless score $success random matches 1.. run function lobby:cosmetics/give_cosmetic