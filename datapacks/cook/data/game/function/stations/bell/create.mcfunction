# Called to create a bell
execute align xyz run kill @e[tag=bell,dx=0,dy=0,dz=0]

execute align xyz run summon interaction ~0.5 ~ ~0.5 { \
    Tags:["bell","station","reset_between_games","interactable"], width: 0.425f, height: 0.325f, response:true}
execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 { \
    Tags:["bell","station","reset_between_games"], item_display:"fixed", \
    brightness:{sky:15,block:15}, item:{id:"bell",components:{item_model:"kitchen_burnout:station/bell"}}, \
    transformation: { left_rotation:[0f,0f,0f,1f], right_rotation:[0f,0f,0f,1f], \
        scale:[1.0f,1.0f,1.0f], translation:[0f,0f,0f]}}