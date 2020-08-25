# Jump boost
function main:game/custom_maps/warehouse/jump_boost

# Portal particles
function main:game/custom_maps/warehouse/portal_particles

# Barrier
execute unless entity @a[tag=In_game_playing,x=468,y=21,z=486,dx=0,dy=2,dz=5.5] run fill 468 22 492 468 21 492 minecraft:iron_bars[east=true,west=true]
execute if entity @a[tag=In_game_playing,x=468,y=21,z=486,dx=0,dy=2,dz=5.5] run fill 468 22 492 468 21 492 air destroy

# Move folling item
execute as @e[type=!player,x=538,y=13,z=499,dx=1,dy=2,dz=2] at @s run teleport @s ~-38 ~26 ~