# Execute function
function main:disconnect/send_back_to_lobby

# Reset score
scoreboard players reset @s Spectate

# Tellraw
tellraw @s ["",{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Lobby","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Back to lobby!","color":"yellow"},{"text":"\n "}]