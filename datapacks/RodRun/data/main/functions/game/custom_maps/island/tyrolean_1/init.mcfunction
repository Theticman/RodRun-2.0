# Tag add
tag @s add In_game_tyrolean
tag @s add In_game_invinsible

# Set invinsible
scoreboard players add @s Invinsible 100

# Summon armor stand
summon minecraft:armor_stand -420 24.1 533 {NoBasePlate:1b,ShowArms:1b,Rotation:[-135f,30f],NoGravity:1b,CustomName:'{"text":"game_tyrolean_1_armor"}',Tags:["need_id"],Pose:{RightArm:[0f,90f,145f],LeftArm:[0f,270f,215f],LeftLeg:[9f,0f,0f],RightLeg:[16f,0f,0f]},HandItems:[{id:"minecraft:stick",Count:1b},{id:"minecraft:stick",Count:1b}],DisabledSlots:4144959}
loot replace entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.head loot main:uuidtest
execute if entity @s[tag=MapMaker] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.chest minecraft:leather_chestplate{display:{color:16759552},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Friend] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.chest minecraft:leather_chestplate{display:{color:16252692},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Mojang] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.chest minecraft:leather_chestplate{display:{color:16731947},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Tester] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.chest minecraft:leather_chestplate{display:{color:16777215},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Player] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.chest minecraft:leather_chestplate{display:{color:12237498},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Blue] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.feet minecraft:leather_boots{display:{color:3708879},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=White] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.feet minecraft:leather_boots{display:{color:16777215},HideFlags:63,Unbreakable:1b}
execute if entity @s[tag=Red] run replaceitem entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] armor.feet minecraft:leather_boots{display:{color:16711680},HideFlags:63,Unbreakable:1b}




execute if score !Deathmatch Reset matches ..0 run data merge entity @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand,limit=1] {Glowing:1b}

# Set id
scoreboard players operation @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] Tyrolean_id = @s Players_id
tag @e[name=game_tyrolean_1_armor,tag=need_id,type=minecraft:armor_stand] remove need_id

# Give effects
effect give @s minecraft:invisibility 3 0 true
effect give @s minecraft:levitation 3 255 true
effect clear @s minecraft:glowing

# Clear
clear @s

# Start cooldown
scoreboard players set !Start Tyrolean_id 1