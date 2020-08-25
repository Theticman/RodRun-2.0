# Use portal tag
tag @s[gamemode=adventure,x=-501,y=28,z=-481,dx=2,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=-481,y=62,z=-501,dx=0,dy=2,dz=2] add Use_portal
tag @s[gamemode=adventure,x=-501,y=28,z=-519,dx=2,dy=2,dz=0] add Use_portal
tag @s[gamemode=adventure,x=-519,y=62,z=-501,dx=0,dy=2,dz=2] add Use_portal

# Purple portal
tag @s[gamemode=adventure,x=-501,y=28,z=-481,dx=2,dy=2,dz=0] add Use_purple_portal_in
tag @s[gamemode=adventure,x=-481,y=62,z=-501,dx=0,dy=2,dz=2] add Use_purple_portal_out

# Orange portal
tag @s[gamemode=adventure,x=-501,y=28,z=-519,dx=2,dy=2,dz=0] add Use_orange_portal_in
tag @s[gamemode=adventure,x=-519,y=62,z=-501,dx=0,dy=2,dz=2] add Use_orange_portal_out

# Run function if portal used
execute as @s[tag=Use_portal] run function main:game/portals/use_portal
tag @s remove Use_portal