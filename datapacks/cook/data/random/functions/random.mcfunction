# Returns a random value between 0 and $mod - 1 (credit to Ts: https://github.com/McTsts/Utility-Functions/blob/master/randomish.mcfunction)
scoreboard players operation $seed random += $353 number
scoreboard players operation $seed random *= $1807 number
scoreboard players operation $seed random %= $13879 number

scoreboard players operation $output random = $seed random
scoreboard players operation $output random %= $mod random

#summon area_effect_cloud ~ ~1 ~ {Tags:["random"],Age:1}
#execute store result score $output random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0] 1
#scoreboard players operation $output random %= $mod random
#kill @e[type=area_effect_cloud,tag=random]