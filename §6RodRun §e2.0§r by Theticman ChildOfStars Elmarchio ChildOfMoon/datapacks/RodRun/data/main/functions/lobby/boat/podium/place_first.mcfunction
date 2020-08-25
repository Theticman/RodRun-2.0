# Kill third
kill @e[type=armor_stand,tag=boat_race_podium_third]

# Move second to third
teleport @e[type=armor_stand,tag=boat_race_podium_second] -14 14.2 -42.5

# Move first to second
teleport @e[type=armor_stand,tag=boat_race_podium_first] -14 14.5 -40.5

# Rename
data merge entity @e[type=armor_stand,tag=boat_race_podium_second,limit=1] {Tags:["boat_race_podium_third"]}
data merge entity @e[type=armor_stand,tag=boat_race_podium_first,limit=1] {Tags:["boat_race_podium_second"]}

# Summon First
summon minecraft:armor_stand -14 14.8 -41.5 {ShowArms:1b,Rotation:[-90f],Small:1b,Tags:["boat_race_podium_first"],NoGravity:1b,DisabledSlots:4144959}
loot replace entity @e[type=minecraft:armor_stand,tag=boat_race_podium_first] armor.head loot main:uuidtest
scoreboard players operation @e[type=minecraft:armor_stand,tag=boat_race_podium_first] Lobby_boat_best = @s Players_id

# Set name
tag @s add Sign
team leave @s
data merge block -14 13 -42 {Text1:'[{"selector":"@a[tag=Sign]","color":"yellow","italic":"true"}]'}
function main:lobby/others/set_team
data modify entity @e[tag=boat_race_podium_first,limit=1] CustomName set from block -14 13 -42 Text1
tag @s remove Sign

# Update score
scoreboard players operation !Third Lobby_boat_best = !Second Lobby_boat_best
scoreboard players operation !Second Lobby_boat_best = !First Lobby_boat_best
scoreboard players operation !First Lobby_boat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_first

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"first","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
