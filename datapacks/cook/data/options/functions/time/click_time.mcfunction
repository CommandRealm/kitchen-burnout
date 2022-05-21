summon area_effect_cloud -2.18 66.4 41.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -2.24 66.4 41.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -2.12 66.4 41.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -2.82 66.4 41.87 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud -2.88 66.4 41.87 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud -2.76 66.4 41.87 {Tags:["check_sign","add","check_time"],Duration:20}
function options:time/raycast
kill @e[tag=check_sign,type=area_effect_cloud]