# Init
execute if block 55 26 -120 minecraft:spruce_button[powered=true] if score !Door_timer Informations matches -1 run scoreboard players set !Door_timer Informations 0
execute if block 62 32 -120 minecraft:spruce_button[powered=true] if score !Door_timer Informations matches -1 run scoreboard players set !Door_timer Informations 0

# Opening sequence
execute if score !Door_timer Informations matches 0..199 run function main:lobby/informations/door/opening_squence

# Closing sequence
execute if score !Door_timer Informations matches 200..300 run function main:lobby/informations/door/closing_squence

# Particle
execute if score !Door_timer Informations matches -1 run particle minecraft:witch 55 26.0 -120 1 0 1 0 1 normal