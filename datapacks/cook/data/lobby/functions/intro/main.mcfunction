# Main intro function. Called to do the intro animation

# Starting the intro
execute as @a[tag=intro_text_call] at @s unless entity @s[scores={intro=0..}] if entity @s[x=0,y=66,z=0,distance=2..] if entity @s[x=-11.0,y=68,z=46.0,distance=2.5..] run function lobby:intro/start


# Calling main function
execute if entity @a[tag=intro_text_call,scores={intro=0..}] run function lobby:intro/active