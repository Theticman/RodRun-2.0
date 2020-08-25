# Detect click (for preview)
execute as @a[tag=In_lobby] run function main:lobby/ender_chest/detect_preview

# Detect click (for selection)
execute as @a[tag=In_lobby] run function main:lobby/ender_chest/detect_click

# Place items
execute as @a[tag=In_lobby] run function main:lobby/ender_chest/place_items

# Animation
execute if score !Timer Kill_effect_anim matches 0.. run function main:lobby/ender_chest/animation

# Merge armorstands data
execute as @e[type=armor_stand,tag=lobby_kill_effect_armor] run data merge entity @s {Fire:30000}
