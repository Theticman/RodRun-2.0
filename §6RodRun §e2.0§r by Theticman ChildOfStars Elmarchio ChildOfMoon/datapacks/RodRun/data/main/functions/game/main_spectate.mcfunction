# Detect out
execute as @a[tag=In_game_spectating] run function main:game/spectate/detect_out

# Quit spectate
execute as @a[tag=In_game_spectating,scores={Spectate=2020}] run function main:game/spectate/teleport_lobby

# Timer
function main:game/spectate/timer