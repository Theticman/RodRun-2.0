# Timer add
scoreboard players add !Timer Update_game_sb 1
execute if score !Timer Update_game_sb matches 400.. run scoreboard players set !Timer Update_game_sb 0

# Player disconnected -> force update
scoreboard players set !Players_now Update_game_sb 0
execute as @a[tag=In_game_playing] run scoreboard players add !Players_now Update_game_sb 1
execute unless score !Players_now Update_game_sb = !Players_previous Update_game_sb run function main:scoreboard/display
scoreboard players operation !Players_previous Update_game_sb = !Players_now Update_game_sb

# Set live to scoreboard
execute if score !Timer Update_game_sb matches 0 run function main:scoreboard/display

# Set kills to scoreboars
execute if score !Timer Update_game_sb matches 200 run function main:scoreboard/display

# Set timer scoreboard
execute if score !Timer Update_game_sb matches 300.. if score !Timer_update Update_game_sb matches -1 run function main:scoreboard/display
execute if score !Timer Update_game_sb matches 300.. run scoreboard players add !Timer_update Update_game_sb 1
execute if score !Timer Update_game_sb matches 300.. if score !Timer_update Update_game_sb matches 19.. run scoreboard players set !Timer_update Update_game_sb -1
