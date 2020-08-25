# Green portal
teleport @s[tag=Use_green_portal_in] 469.5 20.0 527.0 -90 0
teleport @s[tag=Use_green_portal_out] 532.5 20.0 474.0 90 0

# Green portal
teleport @s[tag=Use_red_portal_in] 501.0 20.0 469.5 0 0
teleport @s[tag=Use_red_portal_out] 501.0 20.0 531.5 180 0

# Green portal
teleport @s[tag=Use_yellow_portal_in] 464.0 35.0 508.5 180 0
teleport @s[tag=Use_yellow_portal_out] 465.0 20.0 508.5 180 0

# Blue portal
execute as @s[tag=Use_blue_portal] at @s run teleport @s ~-38 ~26 ~

# Remove tags
tag @s remove Use_green_portal_in
tag @s remove Use_green_portal_out
tag @s remove Use_red_portal_in
tag @s remove Use_red_portal_out
tag @s remove Use_yellow_portal_in
tag @s remove Use_yellow_portal_out
tag @s remove Use_blue_portal