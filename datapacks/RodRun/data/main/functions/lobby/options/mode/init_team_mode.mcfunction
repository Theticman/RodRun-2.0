# Set score to begining of sequence
scoreboard players set !Timer Mode_animation 1
scoreboard players set !Change_option Options 100

#Set new !Mode score
scoreboard players set !Mode Options 1

# Playsounds
execute at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~