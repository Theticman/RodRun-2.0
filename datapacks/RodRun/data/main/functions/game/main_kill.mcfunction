# Throw rod
execute if entity @a[tag=In_game,scores={useFishing=1..},limit=1] run function main:game/kill/throw_rod_init

# Detect kill possibility
execute at @e[type=minecraft:fishing_bobber] if entity @a[tag=In_game_playing,limit=1,distance=..2] run function main:game/kill/kill_init

# Invinsible
execute as @a[tag=In_game_invinsible] run function main:game/kill/invinsible

# Respawn
execute if entity @a[tag=In_game_respawning] run function main:game/kill/respawning
