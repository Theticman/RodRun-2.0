# Remove
scoreboard players remove !Timer Powerups 1

# Summon powerup
execute if score !Timer Powerups matches 0 run function main:game/powerups/summon_powerup

# Reset timer
execute if score !Powerups OptionsInGame matches 2 if score !Timer Powerups matches ..0 run scoreboard players set !Timer Powerups 200
execute if score !Powerups OptionsInGame matches 3 if score !Timer Powerups matches ..0 run scoreboard players set !Timer Powerups 600
execute if score !Powerups OptionsInGame matches 4 if score !Timer Powerups matches ..0 run scoreboard players set !Timer Powerups 1200
execute if score !Powerups OptionsInGame matches 5 if score !Timer Powerups matches ..0 run scoreboard players set !Timer Powerups 2400