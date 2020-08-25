# Use portal tag
tag @s[gamemode=adventure,x=-31,y=5,z=-1059,dx=1,dy=1,dz=1] add Use_portal
tag @s[gamemode=adventure,x=48,y=58,z=-1071,dx=1,dy=1,dz=1] add Use_portal

# To Eiffel tower
tag @s[gamemode=adventure,x=-31,y=5,z=-1059,dx=1,dy=1,dz=1] add Use_portal_in

# From Eiffel tower
tag @s[gamemode=adventure,x=48,y=59,z=-1071,dx=1,dy=1,dz=1] add Use_portal_out

# Run function if portal used
execute as @s[tag=Use_portal] run function main:game/portals/use_portal
tag @s remove Use_portal