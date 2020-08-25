# Kill third
kill @e[type=armor_stand,tag=boat_race_podium_third]

# Move second to third
teleport @e[type=armor_stand,tag=boat_race_podium_second] -14 14.2 -42.5

# Retag
data merge entity @e[type=armor_stand,tag=boat_race_podium_second,limit=1] {Tags:["boat_race_podium_third"]}

# Summon Second
summon minecraft:armor_stand -14 14.5 -40.5 {ShowArms:1b,Rotation:[-90f],Small:1b,Tags:["boat_race_podium_second"],NoGravity:1b,DisabledSlots:4144959}
loot replace entity @e[type=minecraft:armor_stand,tag=boat_race_podium_second] armor.head loot main:uuidtest
scoreboard players operation @e[type=minecraft:armor_stand,tag=boat_race_podium_second] Lobby_boat_best = @s Players_id

# Set name
tag @s add Sign
team leave @s
data merge block -14 13 -42 {Text2:'[{"selector":"@a[tag=Sign]","color":"yellow","italic":"true"}]'}
function main:lobby/others/set_team
data modify entity @e[tag=boat_race_podium_second,limit=1] CustomName set from block -14 13 -42 Text2
tag @s remove Sign

# Update score
scoreboard players operation !Third Lobby_boat_best = !Second Lobby_boat_best
scoreboard players operation !Second Lobby_boat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_second

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"second","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
