# Display
function main:lobby/bar/display

# Look
execute if score !State Lobby_bar matches 0 as @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] at @s if entity @a[distance=..5] run function main:lobby/bar/look

# Selection animation
execute if score !State Lobby_bar matches 1 run function main:lobby/bar/selection_animation

# Selecting phase
execute if score !State Lobby_bar matches 2 run function main:lobby/bar/selecting

# Bye animation
execute if score !State Lobby_bar matches 3 run function main:lobby/bar/bye_animation

# Drink
execute as @e[type=item,nbt={Item:{tag:{Tags:["cup_of_coffee"]}}}] at @s positioned ~ ~-1 ~ as @p run function main:lobby/bar/drink

# Clear glass bottle
clear @a minecraft:glass_bottle