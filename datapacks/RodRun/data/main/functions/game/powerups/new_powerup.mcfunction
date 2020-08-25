# Set bossbar to players
bossbar set minecraft:new_powerup players @a[tag=In_game_playing]

# Update score
scoreboard players remove !New_powerup Powerups 1
execute store result bossbar minecraft:new_powerup value run scoreboard players get !New_powerup Powerups

# Hide bossbar
execute if score !New_powerup Powerups matches -1 run bossbar set minecraft:new_powerup visible false