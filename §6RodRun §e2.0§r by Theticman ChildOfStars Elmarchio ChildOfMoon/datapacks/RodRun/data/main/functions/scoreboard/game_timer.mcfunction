scoreboard objectives remove RodRunGame3SC
scoreboard objectives add RodRunGame3SC dummy
scoreboard objectives modify RodRunGame3SC displayname [{"text":""},{"text":"     ","strikethrough":"true","color":"yellow"},{"text":" RodRun ","color":"gold","bold":true},{"text":"     ","strikethrough":"true","color":"yellow"}]

# Sidebar
scoreboard objectives setdisplay sidebar RodRunGame3SC

# Reset everything
scoreboard players reset * RodRunGame3SC

# Fakeplayers
scoreboard players set §1 RodRunGame3SC 5
scoreboard players set §1§e§lTimers§r§e: RodRunGame3SC 4

# Powerups
execute if score !Powerups OptionsInGame matches 2..5 run function main:scoreboard/game_timer/main_powerups

# Deathmatch
execute if score !Deathmatch OptionsInGame matches 2..6 run function main:scoreboard/game_timer/main_deathmatch

# Game
function main:scoreboard/game_timer/main_game

# Finish bar
scoreboard players set §1§6(§e3/3§6) RodRunGame3SC 6
