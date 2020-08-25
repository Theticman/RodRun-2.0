# Clear levitation
effect clear @a minecraft:levitation

# Main tube
execute as @a[gamemode=adventure] store result score @s Player_y run data get entity @s Pos[1] 1
execute as @a[gamemode=adventure,scores={Player_y=..65}] at @s if block ~ 75 ~ minecraft:black_stained_glass run effect give @s minecraft:levitation 1 11 true

# Secondary tube
execute as @a[gamemode=adventure,scores={Player_y=..40}] at @s if block ~ 75 ~ minecraft:purple_stained_glass run effect give @s minecraft:levitation 1 50 true
execute as @a[gamemode=adventure,scores={Player_y=41..50}] at @s if block ~ 75 ~ minecraft:purple_stained_glass run effect give @s minecraft:levitation 1 30 true
