# Add tag to all possible killer
execute as @a[tag=In_game_playing] at @s run tag @e[type=minecraft:fishing_bobber,distance=..2] add Need_kill_test

# Start recursive function
function main:game/kill/kill_test_select