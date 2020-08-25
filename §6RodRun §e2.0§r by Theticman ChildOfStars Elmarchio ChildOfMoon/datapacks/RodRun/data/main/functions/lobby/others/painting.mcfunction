# Close door
fill 6 22 -50 6 23 -50 minecraft:spruce_planks

# Open
execute if entity @a[x=6,y=22,z=-51,dx=0,dy=1,dz=1] run fill 6 22 -50 6 23 -50 minecraft:spruce_wall_sign[facing=east]
execute if entity @a[x=6,y=22,z=-49,distance=..1,x_rotation=0..10,y_rotation=7..15] run fill 6 22 -50 6 23 -50 minecraft:spruce_wall_sign[facing=east]