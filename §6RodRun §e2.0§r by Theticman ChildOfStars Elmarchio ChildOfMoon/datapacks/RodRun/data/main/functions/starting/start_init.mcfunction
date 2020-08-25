# Set error messages to -1
scoreboard players set !Error_message Starting -1 

# No spam
function main:starting/start_no_spam

# Test if game was already started
execute if score !State Gamestate matches 1.. run scoreboard players set !Timer Starting -1
execute if score !State Gamestate matches 1 if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 1
execute if score !State Gamestate matches 2 if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 2
execute if score !State Gamestate matches 3 if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 3

# Test if the game can actually start
# Amount of players
scoreboard players set !Ready_lobby Starting 0
execute as @a[tag=In_lobby] as @s[tag=Ready] run scoreboard players add !Ready_lobby Starting 1

scoreboard players set !Team_lobby Starting 0
execute if entity @a[nbt={Tags:["In_lobby","Ready","Blue"]},limit=1] run scoreboard players add !Team_lobby Starting 1
execute if entity @a[nbt={Tags:["In_lobby","Ready","White"]},limit=1] run scoreboard players add !Team_lobby Starting 1
execute if entity @a[nbt={Tags:["In_lobby","Ready","Red"]},limit=1] run scoreboard players add !Team_lobby Starting 1

# Solo mode : Not enought player
execute if score !Mode Options matches 0 if score !Ready_lobby Starting matches ..1 run scoreboard players set !Timer Starting -1
execute if score !Timer Starting matches -1 if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 4

# Team mode not enouth teams
execute if score !Mode Options matches 1 if score !Team_lobby Starting matches ..1 run scoreboard players set !Timer Starting -1
execute if score !Timer Starting matches -1 if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 5

# Test if options weren't changed a long ago
execute if score !Change_option Options matches 1.. run scoreboard players set !Timer Starting -1
execute if score !Change_option Options matches 1.. if score !Error_message Starting matches -1 run scoreboard players set !Error_message Starting 6

# Error messages
execute if score !Error_message Starting matches 1 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"A game is already starting!","color":"red"}]
execute if score !Error_message Starting matches 2 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"A game has already started!","color":"red"}]
execute if score !Error_message Starting matches 3 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Game started but is almost done!","color":"red"}]
execute if score !Error_message Starting matches 4 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Not enough ready players to start the game!","color":"red"}]
execute if score !Error_message Starting matches 5 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Not enough teams to start the game!","color":"red"}]
execute if score !Error_message Starting matches 6 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Someone is changing the options, wait until they finished!","color":"red"}]
execute if score !Error_message Starting matches 1..6 run scoreboard players set !Timer Game_start_text 56
execute if score !Error_message Starting matches 1..6 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"red"}]'}

# Actually start the game because all the conditions are met
execute if score !Timer Starting matches 0 run scoreboard players set !Timer Starting 1