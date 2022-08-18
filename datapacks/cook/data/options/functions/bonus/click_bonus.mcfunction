summon area_effect_cloud -5.18 66.4 43.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
summon area_effect_cloud -5.24 66.4 43.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
summon area_effect_cloud -5.12 66.4 43.87 {Tags:["check_sign","remove","check_bonus"],Duration:20}
summon area_effect_cloud -5.82 66.4 43.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
summon area_effect_cloud -5.88 66.4 43.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
summon area_effect_cloud -5.76 66.4 43.87 {Tags:["check_sign","add","check_bonus"],Duration:20}
function options:bonus/raycast
kill @e[tag=check_sign,type=area_effect_cloud]