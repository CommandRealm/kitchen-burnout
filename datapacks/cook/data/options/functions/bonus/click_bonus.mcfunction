summon area_effect_cloud -4.18 66.4 40.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
summon area_effect_cloud -4.24 66.4 40.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
summon area_effect_cloud -4.12 66.4 40.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
summon area_effect_cloud -4.82 66.4 40.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
summon area_effect_cloud -4.88 66.4 40.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
summon area_effect_cloud -4.76 66.4 40.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
function options:bonus/raycast
kill @e[tag=check_sign,type=area_effect_cloud]