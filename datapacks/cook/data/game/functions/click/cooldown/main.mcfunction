# Main click cooldown function
scoreboard players remove @a[tag=playing,scores={click_cooldown=1..}] click_cooldown 1
execute as @a[tag=playing,scores={click_cooldown=..0}] at @s run function game:click/cooldown/over