#scoreboard objectives remove RodRunGame1SC
#scoreboard objectives add RodRunGame1SC dummy
#scoreboard objectives modify RodRunGame1SC displayname [{"text":""},{"text":"     ","strikethrough":"true","color":"yellow"},{"text":" RodRun ","color":"gold","bold":true},{"text":"     ","strikethrough":"true","color":"yellow"}]

# Sidebar
scoreboard objectives setdisplay sidebar RodRunGame1SC

# Reset
scoreboard players reset * RodRunGame1SC

# Solo mode:
execute if score !Mode OptionsInGame matches 0 run execute as @a[tag=In_game,scores={Lives_left=0..}] run scoreboard players operation @s RodRunGame1SC = @s Lives_left

# Team mode:
execute if score !Mode OptionsInGame matches 1 if score !Blue Lives_left matches 0.. run scoreboard players operation §1§9Blue§r§e: RodRunGame1SC = !Blue Lives_left
execute if score !Mode OptionsInGame matches 1 if score !White Lives_left matches 0.. run scoreboard players operation §1§fWhite§r§e: RodRunGame1SC = !White Lives_left
execute if score !Mode OptionsInGame matches 1 if score !Red Lives_left matches 0.. run scoreboard players operation §1§cRed§r§e: RodRunGame1SC = !Red Lives_left

#Blank spaces
scoreboard players set §1 RodRunGame1SC 0
execute if score !Mode OptionsInGame matches 0 run scoreboard players operation §1 RodRunGame1SC > @a[tag=In_game,scores={Lives_left=0..}] RodRunGame1SC
execute if score !Mode OptionsInGame matches 1 if score !Blue Lives_left matches 0.. run scoreboard players operation §1 RodRunGame1SC > §1§9Blue§r§e: RodRunGame1SC
execute if score !Mode OptionsInGame matches 1 if score !White Lives_left matches 0.. run scoreboard players operation §1 RodRunGame1SC > §1§fWhite§r§e: RodRunGame1SC
execute if score !Mode OptionsInGame matches 1 if score !Red Lives_left matches 0.. run scoreboard players operation §1 RodRunGame1SC > §1§cRed§r§e: RodRunGame1SC

scoreboard players add §1 RodRunGame1SC 1
scoreboard players operation §1§e§lLives§r§e: RodRunGame1SC = §1 RodRunGame1SC
scoreboard players add §1 RodRunGame1SC 1

# Finish bar
scoreboard players operation §1§6(§e1/3§6) RodRunGame1SC = §1 RodRunGame1SC
scoreboard players add §1§6(§e1/3§6) RodRunGame1SC 1