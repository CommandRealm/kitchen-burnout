summon area_effect_cloud 6.18 66.4 40.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 6.24 66.4 40.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 6.12 66.4 40.87 {Tags:["check_sign","add","check_glowing"],Duration:20}
summon area_effect_cloud 6.82 66.4 40.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
summon area_effect_cloud 6.88 66.4 40.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
summon area_effect_cloud 6.76 66.4 40.87 {Tags:["check_sign","remove","check_glowing"],Duration:20}
function options:glowing/raycast
kill @e[tag=check_sign,type=area_effect_cloud]