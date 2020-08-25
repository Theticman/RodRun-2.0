# Add tag for every boat
tag @s add Not_on_track

# Remove tag arguments
execute as @s[nbt={Fire:-1s}] at @s if block ~ 0 ~ gray_wool run tag @s remove Not_on_track
execute as @s[nbt={Fire:-1s}] at @s if block ~.6874 0 ~.6874 gray_wool run tag @s remove Not_on_track
execute as @s[nbt={Fire:-1s}] at @s if block ~.6874 0 ~-.6874 gray_wool run tag @s remove Not_on_track
execute as @s[nbt={Fire:-1s}] at @s if block ~-.6874 0 ~.6874 gray_wool run tag @s remove Not_on_track
execute as @s[nbt={Fire:-1s}] at @s if block ~-.6874 0 ~-.6874 gray_wool run tag @s remove Not_on_track

# First jump
kill @s[type=boat,x=-6,y=6,z=-63,dx=6,dy=1.5,dz=4]

# Bumpers
kill @s[type=boat,x=-33,y=2,z=-44,dx=9,dy=5,dz=5]
kill @s[type=boat,x=-25,y=11,z=-45,dx=7,dy=5,dz=7]


# Kill boat
kill @s[tag=Not_on_track,nbt={Fire:1999s}]

# Set on fire
data merge entity @s[type=boat,tag=Not_on_track] {Fire:2000s}