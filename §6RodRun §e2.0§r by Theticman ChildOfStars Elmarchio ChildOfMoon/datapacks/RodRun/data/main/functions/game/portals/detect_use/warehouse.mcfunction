# Use portal tag
tag @s[gamemode=adventure,x=532,y=20,z=472,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=469,y=20,z=525,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=499,y=20,z=531,dx=3,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=499,y=20,z=469,dx=3,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=463,y=20,z=508,dx=3,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=462,y=35,z=508,dx=3,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=538,y=15,z=499,dx=1,dy=1,dz=2] add Use_portal

# Green portal
tag @s[gamemode=adventure,x=532,y=20,z=472,dx=0,dy=2,dz=3] add Use_green_portal_in
tag @s[gamemode=adventure,x=469,y=20,z=525,dx=0,dy=2,dz=3] add Use_green_portal_out

# Red portal
tag @s[gamemode=adventure,x=499,y=20,z=531,dx=3,dy=2,dz=0] add Use_red_portal_in
tag @s[gamemode=adventure,x=499,y=20,z=469,dx=3,dy=2,dz=0] add Use_red_portal_out

# Yellow portal
tag @s[gamemode=adventure,x=463,y=20,z=508,dx=3,dy=2,dz=0] add Use_yellow_portal_in
tag @s[gamemode=adventure,x=462,y=35,z=508,dx=3,dy=2,dz=0] add Use_yellow_portal_out

# BLue portal
tag @s[gamemode=adventure,x=538,y=15,z=499,dx=1,dy=1,dz=2] add Use_blue_portal

# Run function if portal used
execute as @s[tag=Use_portal] run function main:game/portals/use_portal
tag @s remove Use_portal
