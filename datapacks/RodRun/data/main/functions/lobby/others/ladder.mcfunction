effect clear @a[x=10,y=17,z=-34,dx=0,dy=1,dz=0] minecraft:invisibility
effect give @a[x=7,y=4,z=-42,dx=4,dy=12,dz=20] minecraft:invisibility 1 0 true
execute as @a[x=8,y=4,z=-40,distance=..1] at @s run teleport @s ~ ~ ~8
execute as @a[x=8,y=4,z=-28,distance=..1] at @s run teleport @s ~ ~ ~-8