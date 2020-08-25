# Add tags to all potential victim 
execute at @s as @a[tag=In_game_playing,distance=..1] run tag @s[tag=!In_game_invinsible] add Victim_test

# Call recursive function
function main:game/powerups/mine/kill_test
