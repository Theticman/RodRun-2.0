# Tag managment
tag @s add In_game_playing
tag @s add In_game_invinsible
tag @s remove In_game_respawning
scoreboard players set @s Invinsible 60

# Player managment
gamemode adventure @s

# Teleport player
function main:game/random_teleport/teleport_player

# Playsound
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~