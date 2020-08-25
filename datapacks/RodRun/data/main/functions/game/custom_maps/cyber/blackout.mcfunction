# Start Blackout
execute if score !Lever_1 Cyber_lever matches 1 if score !Lever_2 Cyber_lever matches 1 if score !Blackout Cyber_lever matches -1 run scoreboard players set !Blackout Cyber_lever 0

# Timer add
execute if score !Blackout Cyber_lever matches 0.. run scoreboard players add !Blackout Cyber_lever 1

# Init bossbar
execute if score !Blackout Cyber_lever matches 1 run scoreboard players set !Blackout_bossbar Cyber_lever 600
execute if score !Blackout Cyber_lever matches 1 run bossbar set minecraft:blackout visible true

# Update bossbar
execute store result bossbar minecraft:blackout value run scoreboard players get !Blackout_bossbar Cyber_lever
execute if score !Blackout Cyber_lever matches 0.. run scoreboard players remove !Blackout_bossbar Cyber_lever 1

# Blindness
execute if score !Blackout Cyber_lever matches 0.. run effect give @a[tag=In_game_playing] minecraft:blindness 999999 0 true
execute if score !Blackout Cyber_lever matches 0.. run bossbar set minecraft:blackout players @a[tag=In_game]

# Reset
execute if score !Blackout Cyber_lever matches 600 run bossbar set minecraft:blackout visible false
execute if score !Blackout Cyber_lever matches 600 run effect clear @a minecraft:blindness
execute if score !Blackout Cyber_lever matches 600 run scoreboard players set !Blackout Cyber_lever -1