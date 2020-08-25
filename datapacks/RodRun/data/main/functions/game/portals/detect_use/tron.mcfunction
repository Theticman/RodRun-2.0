# Use portal tag
tag @s[gamemode=adventure,x=-501,y=25,z=30,dx=2,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=-458,y=20,z=3,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=-458,y=20,z=-6,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=-542,y=20,z=3,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=-542,y=20,z=-6,dx=0,dy=2,dz=3] add Use_portal
tag @s[gamemode=adventure,x=-501,y=25,z=-30,dx=2,dy=2,dz=0] add Use_portal

# Pink portal
tag @s[gamemode=adventure,x=-501,y=25,z=30,dx=2,dy=2,dz=0] add Use_pink_portal_in
tag @s[gamemode=adventure,x=-458,y=20,z=3,dx=0,dy=2,dz=3] add Use_pink_portal_out

# Yellow portal
tag @s[gamemode=adventure,x=-458,y=20,z=-6,dx=0,dy=2,dz=3] add Use_yellow_portal_in
tag @s[gamemode=adventure,x=-542,y=20,z=3,dx=0,dy=2,dz=3] add Use_yellow_portal_out

# Green portal
tag @s[gamemode=adventure,x=-542,y=20,z=-6,dx=0,dy=2,dz=3] add Use_green_portal_in
tag @s[gamemode=adventure,x=-501,y=25,z=-30,dx=2,dy=2,dz=0] add Use_green_portal_out

# Run function if portal used
execute as @s[tag=Use_portal] run function main:game/portals/use_portal
tag @s remove Use_portal
