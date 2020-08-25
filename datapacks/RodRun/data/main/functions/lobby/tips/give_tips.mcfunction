# Add
scoreboard players add @s Tips_number 1
execute if score @s Tips_number matches 20.. run scoreboard players set @s Tips_number 1

# Start timer
scoreboard players operation @s Tips_timer = @s Tips_number
scoreboard players operation @s Tips_timer *= !Modulo Tips_timer

# Playsound
execute at @s run playsound minecraft:entity.villager.trade master @s