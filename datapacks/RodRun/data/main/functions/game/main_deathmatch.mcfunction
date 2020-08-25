# Timer remove 1
scoreboard players remove !Deathmatch Reset 1
execute if score !Deathmatch Reset matches ..0 run scoreboard players remove !Deathmatch_bossbar Reset 1

# Init bossbar
execute if score !Deathmatch Reset matches 0 run bossbar set minecraft:new_powerup visible false

# Display 
function main:game/deathmatch/display

# Effects
execute if score !Deathmatch Reset matches ..0 run function main:game/deathmatch/effects

# Turn off powerups
execute if score !Deathmatch Reset matches 0 run clear @a[tag=In_game_playing]
execute if score !Deathmatch Reset matches 0 run scoreboard players set !Powerups OptionsInGame 0
execute if score !Deathmatch Reset matches 0 run scoreboard players set @a Powerup_glow 0
execute if score !Deathmatch Reset matches 0 run scoreboard players set @a Powerup_speed 0
execute if score !Deathmatch Reset matches 0 run scoreboard players set @a Powerup_mine 0
execute if score !Deathmatch Reset matches 0 run scoreboard players set @a Powerup_shield 0
execute if score !Deathmatch Reset matches 0 run kill @e[type=item,tag=game_powerup_item]
execute if score !Deathmatch Reset matches 0 run kill @e[type=armor_stand,name=game_mine]
execute if score !Deathmatch Reset matches 0 run kill @e[type=armor_stand,name=game_mine_button]
execute if score !Deathmatch Reset matches 0 run kill @e[type=armor_stand,name=game_mine_tnt]

# Remove lives
execute if score !Deathmatch Reset matches -200 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -400 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -600 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -800 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1000 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1100 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1200 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1300 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1400 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1500 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1600 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1700 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1800 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -1900 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2000 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2050 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2100 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2150 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2200 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2250 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2300 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2350 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2400 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2450 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches -2500 run function main:game/deathmatch/remove_live
execute if score !Deathmatch Reset matches ..-2500 run function main:game/deathmatch/remove_live

# Reset game
execute if score !Deathmatch Reset matches -3600 run tag @a[tag=In_game_playing] add Winner_tie
execute if score !Deathmatch Reset matches -3600 run tag @a[tag=In_game_playing] remove In_game_playing
