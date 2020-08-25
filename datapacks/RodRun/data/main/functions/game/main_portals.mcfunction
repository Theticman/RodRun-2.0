#Use portal detect
execute as @a[tag=!In_game_portal_cooldown] run function main:game/portals/main_detect_use

# Particles
execute if score !Map OptionsInGame matches 2 run function main:game/portals/particles/warehouse
execute if score !Map OptionsInGame matches 6 run function main:game/portals/particles/cyber
execute if score !Map OptionsInGame matches 7 run function main:game/portals/particles/tron
execute if score !Map OptionsInGame matches 14 run function main:game/portals/particles/paris

# Cooldown
execute as @a[tag=In_game_portal_cooldown] run function main:game/portals/portal_cooldown