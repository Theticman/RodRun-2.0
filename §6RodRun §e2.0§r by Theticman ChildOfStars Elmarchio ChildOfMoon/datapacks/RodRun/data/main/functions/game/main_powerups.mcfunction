# Timer
function main:game/powerups/timer

# New powerup timer
execute if score !New_powerup Powerups matches 0.. run function main:game/powerups/new_powerup

# Display
function main:game/powerups/display

# Detect picked up
execute as @a[tag=In_game_playing] run function main:game/powerups/detect_powerup_picked_up

# Detect used
execute as @a[tag=In_game_playing,scores={Use_powerup=1..}] run function main:game/powerups/inventory/detect_powerup_used

# Inventory managment
execute as @a[tag=!In_game_tyrolean,tag=In_game_playing] run function main:game/powerups/main_inventory
function main:game/powerups/inventory/kill_items

# Mine
function main:game/powerups/main_mine