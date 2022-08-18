summon area_effect_cloud -3.18 66.4 44.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -3.24 66.4 44.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -3.12 66.4 44.87 {Tags:["check_sign","remove","check_time"],Duration:20}
summon area_effect_cloud -3.82 66.4 44.87 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud -3.88 66.4 44.87 {Tags:["check_sign","add","check_time"],Duration:20}
summon area_effect_cloud -3.76 66.4 44.87 {Tags:["check_sign","add","check_time"],Duration:20}
function options:time/raycast
kill @e[tag=check_sign,type=area_effect_cloud]