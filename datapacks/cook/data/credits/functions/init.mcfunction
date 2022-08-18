# called to set up credit armor stands

kill @e[type=armor_stand,tag=knad]
kill @e[type=armor_stand,tag=pinkessi]
kill @e[type=armor_stand,tag=joel]

scoreboard objectives add credits dummy

function credits:knad/init
function credits:joel/init
function credits:pinkessi/init

function credits:h_arm_setup
function credits:calverin_setup
function credits:pug/pug_setup
function credits:f_arm_setup

# knad summon
summon minecraft:armor_stand 32 67.0 34 {DisabledSlots: 4144959,Marker:1,Rotation:[-22.5f,0f],HandItems:[{id:"minecraft:book",Count:1b},{}],NoGravity:1b,Tags:["knad","credits","show_details"], NoBasePlate:1b, ShowArms:1b, Pose:{LeftArm:[0f, 0f, 0f], RightArm:[0f, 0f, 0f], LeftLeg:[0f, 0f, 0f], RightLeg:[0f, 0f, 0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5723991}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11579568}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-137592438,-296467940,-1523500056,1682829205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ3Y2Y3NzBlOTA0Y2MzMzE4M2Q1MDJkNDkwMDg1NWE5MjNhNmYxODAwNjQ1ZDA1ZjQ5MDRmYWMwODQ4ODIzOSJ9fX0="}]}}}}]}

# joel summon
summon minecraft:armor_stand 34 67 33 {DisabledSlots: 4144959,Marker:1,HandItems:[{},{id:"minecraft:spyglass",Count:1b}],NoGravity:1b,Tags:["joel","credits","show_details"], NoBasePlate:1b, ShowArms:1b, Pose:{LeftArm:[0f, 0f, 0f], RightArm:[0f, 0f, 0f], LeftLeg:[0f, 0f, 0f], RightLeg:[0f, 0f, 0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13727006}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2894892}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16382457}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-306561069,1979534562,-1475445605,-676702881],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGFjM2Y1ZDAzMzBmNDQwNTk3MTM2ZWZkM2JjZmQ0OTNmYWQ1ZjI3Y2FlMDFlYTVmNmNmMDk4OTg0MzRmN2MzMCJ9fX0="}]}}}}]}



summon minecraft:armor_stand 42 67 34 {DisabledSlots: 4144959,Marker:1,Rotation:[180f,0f],NoGravity:1b,Tags:["pinkessi","credits","show_details"], NoBasePlate:1b, ShowArms:1b, Pose:{LeftArm:[0f, 0f, 0f], RightArm:[0f, 0f, 0f], LeftLeg:[0f, 0f, 0f], RightLeg:[0f, 0f, 0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16757247}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16757247}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16757247}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2119929409,1715093750,-1635934702,503858979],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmUxZjU1YzYzZTY1NjRhOWFkNjBlZTBlMDhmYzQwMDUzMTg4ZmVhMjg5Yzk2OWVkZmNiODA2ZDE0MjY0MzdjIn19fQ=="}]}}}}]}


execute as @e[type=armor_stand,tag=knad] at @s run function credits:knad/start
execute as @e[type=armor_stand,tag=joel] at @s run function credits:joel/start
execute as @e[type=armor_stand,tag=pinkessi] at @s run function credits:pstart

scoreboard players operation $knad calculate = @e[type=armor_stand,tag=knad,limit=1] knad.timer
scoreboard players operation $joel calculate = @e[type=armor_stand,tag=joel,limit=1] joel.new.timer
scoreboard players operation $pinkessi calculate = @e[type=armor_stand,tag=pinkessi,limit=1] model.new.timer