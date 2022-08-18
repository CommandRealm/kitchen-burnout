summon area_effect_cloud 7.18 66.4 43.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 7.24 66.4 43.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 7.12 66.4 43.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 7.82 66.4 43.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
summon area_effect_cloud 7.88 66.4 43.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
summon area_effect_cloud 7.76 66.4 43.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
function options:glowing/raycast
kill @e[tag=check_sign,type=area_effect_cloud]