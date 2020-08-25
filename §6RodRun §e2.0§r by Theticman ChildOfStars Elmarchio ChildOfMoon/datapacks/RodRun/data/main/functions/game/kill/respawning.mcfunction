# Add score
scoreboard players add @a[tag=In_game_respawning] Respawning 1

# Gamemode
gamemode spectator @a[tag=In_game_respawning,scores={Respawning=1}]

# Test
execute as @a[tag=In_game_respawning] at @s run spectate @p[tag=In_game_playing]

# Title dead
execute as @a[tag=In_game_respawning,scores={Respawning=1..}] run title @s times 0 10 0
execute as @a[tag=In_game_respawning,scores={Respawning=1..19}] run title @s actionbar [{"text":"Respawning in ","color":"yellow"},{"text":"5","color":"gold"}]
execute as @a[tag=In_game_respawning,scores={Respawning=20..39}] run title @s actionbar [{"text":"Respawning in ","color":"yellow"},{"text":"4","color":"gold"}]
execute as @a[tag=In_game_respawning,scores={Respawning=40..59}] run title @s actionbar [{"text":"Respawning in ","color":"yellow"},{"text":"3","color":"gold"}]
execute as @a[tag=In_game_respawning,scores={Respawning=60..79}] run title @s actionbar [{"text":"Respawning in ","color":"yellow"},{"text":"2","color":"gold"}]
execute as @a[tag=In_game_respawning,scores={Respawning=80..99}] run title @s actionbar [{"text":"Respawning in ","color":"yellow"},{"text":"1","color":"gold"}]
execute as @a[tag=In_game_respawning,scores={Respawning=100}] run title @s subtitle [{"text":""}]
execute as @a[tag=In_game_respawning,scores={Respawning=100}] run title @s actionbar [{"text":" "}]

# Playsound
execute as @a[tag=In_game_respawning,scores={Respawning=60}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute as @a[tag=In_game_respawning,scores={Respawning=80}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5

# Respawn
execute as @a[tag=In_game_respawning,scores={Respawning=100}] run function main:game/kill/respawn

# Reset scores
scoreboard players reset @a[scores={Respawning=100..}] Respawning