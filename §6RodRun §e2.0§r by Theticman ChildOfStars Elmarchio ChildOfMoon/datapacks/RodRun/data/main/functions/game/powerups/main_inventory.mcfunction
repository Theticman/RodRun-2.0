# Get SelectedItemSlot
execute store result score @s SelectedItem run data get entity @s SelectedItemSlot

# Inventory speed powerup
execute unless score @s SelectedItem matches 5 run function main:game/powerups/inventory/replace_speed
execute if score @s SelectedItem matches 5 run function main:game/powerups/inventory/selected_speed

# Inventory glow powerup
execute unless score @s SelectedItem matches 6 run function main:game/powerups/inventory/replace_glow
execute if score @s SelectedItem matches 6 run function main:game/powerups/inventory/selected_glow

# Inventory shield powerup
execute unless score @s SelectedItem matches 7 run function main:game/powerups/inventory/replace_shield
execute if score @s SelectedItem matches 7 run function main:game/powerups/inventory/selected_shield

# Inventory mine powerup
execute unless score @s SelectedItem matches 8 run function main:game/powerups/inventory/replace_mine
execute if score @s SelectedItem matches 8 run function main:game/powerups/inventory/selected_mine

# Inventory rod
execute unless score @s SelectedItem matches 5..8 run replaceitem entity @s weapon.offhand air