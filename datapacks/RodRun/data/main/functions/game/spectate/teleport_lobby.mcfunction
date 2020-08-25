# Execute function
function main:disconnect/send_back_to_lobby

# Tellraw
tellraw @s ["",{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Lobby","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Back to lobby!","color":"yellow"},{"text":"\n "}]

# Playsound
execute at @s run playsound minecraft:block.stone_button.click_on master @s