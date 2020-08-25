# Error messages
tellraw @a[tag=Starting] [{"text":""},{"text":"\n>","color":"gold","bold":true},{"text":" Error","color":"red","bold":true},{"text":":","color":"yellow"}]
tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Starting conditions aren't met anymore!","color":"yellow"}]
tellraw @a[tag=Starting] [{"text":""},{"text":"                                                                     ","color":"yellow","strikethrough":true}]

# Reset scores
scoreboard players set !State Gamestate 0
scoreboard players set !Timer Starting -1

# Give teams back
execute if score !Mode Options matches 0 run tag @a[tag=Starting] remove Blue
execute if score !Mode Options matches 0 run tag @a[tag=Starting] remove White
execute if score !Mode Options matches 0 run tag @a[tag=Starting] remove Red
execute as @a[tag=Starting] run function main:lobby/others/set_team

# Clear
clear @a[tag=Starting]

# Teleport back
execute as @a[tag=Starting] run function main:lobby/others/teleport_lobby

# Give tags back
tag @a[tag=Starting] add In_lobby
tag @a[tag=Starting] add Ready
tag @a[tag=Starting] remove Starting