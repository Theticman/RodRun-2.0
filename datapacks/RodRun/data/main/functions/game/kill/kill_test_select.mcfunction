# Select booper to kill
tag @e[tag=Need_kill_test,sort=random,limit=1] add Kill_test
tag @e[tag=Kill_test] remove Need_kill_test

# Add tags to all potential victim 
execute as @e[type=minecraft:fishing_bobber,tag=Kill_test,limit=1] at @s run execute as @a[tag=In_game_playing,distance=..2] run tag @s[tag=!In_game_invinsible] add Victim_test

# Call recursive function
function main:game/kill/kill_test

# Remove tag
tag @e[tag=Kill_test] remove Kill_test

# Recall if not finished
execute if entity @e[tag=Need_kill_test,limit=1] run function main:game/kill/kill_test_select