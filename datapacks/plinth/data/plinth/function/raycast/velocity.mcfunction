execute unless entity @s[tag=velocity_math_done] run function plinth:raycast/velocity_math
scoreboard players operation @s tick_iterations = @s iterations
scoreboard players operation @s extra_iteration += @s decimal_iterations
scoreboard players add @s[scores={extra_iteration=100..}] tick_iterations 1
scoreboard players remove @s[scores={extra_iteration=100..}] extra_iteration 100
execute if entity @s[tag=v_ray,scores={tick_iterations=1..}] run function plinth:raycast/velocity_sample