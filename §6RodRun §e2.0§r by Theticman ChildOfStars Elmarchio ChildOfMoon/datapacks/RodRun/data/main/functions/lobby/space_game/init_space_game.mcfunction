# Add tag
tag @s add In_lobby_space_game_init

# Remove if someone is playing
execute if score !State Space_game matches 1.. run tag @s remove In_lobby_space_game_init

# Tellraw can't start game
tellraw @s[tag=!In_lobby_space_game_init] [{"text":"can't start game"}]

# Start game
tag @s[tag=In_lobby_space_game_init] add In_lobby_space_game
clear @s[tag=In_lobby_space_game_init]
tag @s[tag=In_lobby_space_game_init] remove Ready
tag @s[tag=In_lobby_space_game_init] remove In_lobby_space_game_init

# Setup game function
execute as @s[tag=In_lobby_space_game] run function main:lobby/space_game/setup_game