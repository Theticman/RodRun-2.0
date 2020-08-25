# Playsound
execute at @s run playsound minecraft:entity.phantom.flap master @a[tag=In_game] ~ ~ ~ 1 2

# Add one speed
scoreboard players remove @s Powerup_speed 1

# Clear item
clear @s minecraft:sugar{Tags:["speed_sugar"]}

# speed
execute store result score @s compute_speed run data get entity @s ActiveEffects[{Id:1b}].Amplifier
scoreboard players add @s compute_speed 3
effect give @s[scores={compute_speed=3}] minecraft:speed 2 2 true
effect give @s[scores={compute_speed=4}] minecraft:speed 2 3 true
effect give @s[scores={compute_speed=5}] minecraft:speed 2 4 true
effect give @s[scores={compute_speed=6}] minecraft:speed 2 5 true
effect give @s[scores={compute_speed=7}] minecraft:speed 2 6 true
effect give @s[scores={compute_speed=8}] minecraft:speed 2 7 true
effect give @s[scores={compute_speed=9}] minecraft:speed 2 8 true
effect give @s[scores={compute_speed=10..}] minecraft:speed 2 9 true

# maximum velocity reached
title @s[scores={compute_speed=10..}] actionbar {"text":"Maximum speed reached!","color":"red"}

# Update stats
function main:lobby/stats/update_speed

# Remove tag
tag @s remove Used_powerup_speed