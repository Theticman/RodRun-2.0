# Disconnect
function main:main_disconnect

# Lobby
function main:main_lobby

# Starting
function main:main_starting

# Reset
execute if score !State Gamestate matches 2..3 run function main:main_reset

# Game
execute if score !State Gamestate matches 1..3 run function main:main_game

# Debug
execute as @a[tag=Fix_light] run function main:fix_light
