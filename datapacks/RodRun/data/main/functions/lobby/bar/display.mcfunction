# Hide 
data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {CustomNameVisible:0b}

# Display
execute as @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] at @s if entity @a[distance=..5] if score !State Lobby_bar matches 0 run data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {CustomNameVisible:1b,CustomName:'{"text":"Click me","color":"gray","italic":"true"}'}
execute as @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] at @s if entity @a[distance=..5] if score !State Lobby_bar matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {CustomNameVisible:1b,CustomName:'{"text":"Click to choose","color":"gray","italic":"true"}'}
execute as @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] at @s if entity @a[distance=..5] if score !State Lobby_bar matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {CustomNameVisible:1b,CustomName:'{"text":"Cya","color":"gray","italic":"true"}'}
