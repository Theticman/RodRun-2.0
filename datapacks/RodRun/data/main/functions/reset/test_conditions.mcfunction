# Conditions
scoreboard players set !Players_alive Reset 0
execute as @a[tag=In_game_playing] run scoreboard players add !Players_alive Reset 1
execute as @a[tag=In_game_respawning] run scoreboard players add !Players_alive Reset 1

scoreboard players set !Blue_alive Reset 0
scoreboard players set !White_alive Reset 0
scoreboard players set !Red_alive Reset 0
execute as @a[tag=In_game_playing,tag=Blue] run scoreboard players add !Blue_alive Reset 1
execute as @a[tag=In_game_respawning,tag=Blue] run scoreboard players add !Blue_alive Reset 1
execute as @a[tag=In_game_playing,tag=White] run scoreboard players add !White_alive Reset 1
execute as @a[tag=In_game_respawning,tag=White] run scoreboard players add !White_alive Reset 1
execute as @a[tag=In_game_playing,tag=Red] run scoreboard players add !Red_alive Reset 1
execute as @a[tag=In_game_respawning,tag=Red] run scoreboard players add !Red_alive Reset 1

scoreboard players set !Teams_alive Reset 0
execute if score !Blue_alive Reset matches 1.. run scoreboard players add !Teams_alive Reset 1
execute if score !White_alive Reset matches 1.. run scoreboard players add !Teams_alive Reset 1
execute if score !Red_alive Reset matches 1.. run scoreboard players add !Teams_alive Reset 1

# Test
execute if score !Mode OptionsInGame matches 0 if score !Players_alive Reset matches ..1 run scoreboard players set !Timer Reset 0
execute if score !Mode OptionsInGame matches 1 if score !Teams_alive Reset matches ..1 run scoreboard players set !Timer Reset 0