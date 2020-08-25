# Update last position
execute store result score @s Player_x run data get entity @s Pos[0] 1
execute store result score @s Player_y run data get entity @s Pos[1] 10
execute store result score @s Player_z run data get entity @s Pos[2] 1

scoreboard players add @s Player_y 2