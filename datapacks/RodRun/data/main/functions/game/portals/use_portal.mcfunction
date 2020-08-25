# Set tags
tag @s add In_game_portal_cooldown
tag @s add In_game_invinsible
scoreboard players add @s Invinsible 30

# Teleport
function main:game/portals/find_teleport

# Playsounds
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~