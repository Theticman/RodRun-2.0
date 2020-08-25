# Tag the mine
tag @s add Friendly_particles
execute at @s run tag @a[tag=In_game_playing,distance=..10] add Display_friendly_particles

# Select players to perform particle to
execute as @a[tag=Display_friendly_particles] unless score @s Players_kill_id = @e[tag=Friendly_particles,limit=1] Mine_kill_id run tag @s remove Display_friendly_particles
tag @e[tag=Friendly_particles] remove Friendly_particles

# Teleport mine parts
execute at @s run particle dust 0.208 1.000 0.122 1 ~ ~ ~ 0.208 1.000 0.122 1 0 normal @a[tag=Display_friendly_particles]

# Remove tag
tag @a[tag=Display_friendly_particles] remove Display_friendly_particles
