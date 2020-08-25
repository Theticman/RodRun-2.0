#scoreboard objectives remove RodRunGame2SC
#scoreboard objectives add RodRunGame2SC dummy
#scoreboard objectives modify RodRunGame2SC displayname [{"text":""},{"text":"     ","strikethrough":"true","color":"yellow"},{"text":" RodRun ","color":"gold","bold":true},{"text":"     ","strikethrough":"true","color":"yellow"}]

# Sidebar
scoreboard objectives setdisplay sidebar RodRunGame2SC

# Reset
scoreboard players reset * RodRunGame2SC

# Get scores
execute as @a[tag=In_game,scores={Game_kills=1..}] run scoreboard players operation @s RodRunGame2SC = @s Game_kills

# Fakeplayers
scoreboard players set §1 RodRunGame2SC 0
scoreboard players operation §1 RodRunGame2SC > @a[tag=In_game,scores={Game_kills=1..}] RodRunGame2SC
scoreboard players add §1 RodRunGame2SC 1
scoreboard players operation §1§e§lKills§r§e: RodRunGame2SC = §1 RodRunGame2SC
scoreboard players add §1 RodRunGame2SC 1

# Finish bar
scoreboard players operation §1§6(§e2/3§6) RodRunGame2SC = §1 RodRunGame2SC
scoreboard players add §1§6(§e2/3§6) RodRunGame2SC 1