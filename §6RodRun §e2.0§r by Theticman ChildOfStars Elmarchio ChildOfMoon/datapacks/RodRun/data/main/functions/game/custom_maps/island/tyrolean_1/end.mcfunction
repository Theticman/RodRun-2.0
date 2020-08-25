# Tag add
tag @s add Tyrolean_main_armor
execute as @a[tag=In_game_tyrolean] if score @s Players_id = @e[tag=Tyrolean_main_armor,name=game_tyrolean_1_armor,limit=1] Tyrolean_id run tag @s add Tyrolean_player_end

# Manage player
teleport @a[tag=Tyrolean_player_end] -408 21 521
gamemode adventure @a[tag=Tyrolean_player_end]
effect clear @a[tag=Tyrolean_player_end] minecraft:invisibility
effect clear @a[tag=Tyrolean_player_end] minecraft:levitation

# Tags remove
tag @a[tag=Tyrolean_player_end] remove In_game_tyrolean
tag @a[tag=Tyrolean_player_end] remove Tyrolean_player_end

# Kill self armor
kill @s