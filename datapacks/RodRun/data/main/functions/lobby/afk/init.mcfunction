# Reset scores
scoreboard players reset @s AFK_timer

# Tags managment
tag @s remove Ready
tag @s remove In_lobby
tag @s add In_lobby_afk

# Join team
function main:lobby/others/set_team

# Create armor stand
summon minecraft:armor_stand -62 85 -7 {CustomNameVisible:0b,NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["AFK_armor",need_id],Rotation:[90F,-20F]}
scoreboard players operation @e[type=armor_stand,tag=need_id,limit=1] AFK_armor_id = @s Players_id

# Start spectating
gamemode spectator @s
spectate @e[type=armor_stand,tag=need_id,limit=1]
clear @s

# Bee tag remove
tag @e[type=minecraft:armor_stand,tag=need_id,limit=1] remove need_id
