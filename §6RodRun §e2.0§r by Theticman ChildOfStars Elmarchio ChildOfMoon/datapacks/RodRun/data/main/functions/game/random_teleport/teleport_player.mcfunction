# Forceload list
#forceload add 463 528 534 467 WAREHOUSE
#forceload add 455 28 534 -38 WHITEHOUSE
#forceload add 454 -536 546 -464 EGYPT
#forceload add 43 -542 -43 -449 HOSTEL
#forceload add -521 -521 -479 -478 CYBER
#forceload add -456 -32 -544 32	TRON
#forceload add -580 593 -350 380 ISLAND
#forceload add -41 435 44 572 METRO
#forceload add 1061 -54 930 94 AQUARIUM
#forceload add -1015 1026 -853 918 PARKING
#forceload add -1000 -1 -1042 -60 CABARET
#forceload add -884 1028 -973 1087 SHOP
#forceload add 92 -1026 26 -1092 PARIS 1
#forceload add -29 -1119 -150 -999 PARIS 2

# Add tag
tag @s add Need_teleport

# Teleport
execute if score !Map OptionsInGame matches 2 as @e[name=random_Warehouse,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 3 as @e[name=random_Whitehouse,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 4 as @e[name=random_Egypt,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 5 as @e[name=random_Hostel,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 6 as @e[name=random_Cyber,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 7 as @e[name=random_Tron,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 8 as @e[name=random_Island,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 9 as @e[name=random_Metro,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 10 as @e[name=random_Aquarium,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 11 as @e[name=random_Parking,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 12 as @e[name=random_Cabaret,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 13 as @e[name=random_Mall,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s
execute if score !Map OptionsInGame matches 14 as @e[name=random_Paris,sort=random,limit=1] at @s run teleport @e[tag=Need_teleport] @s

# Remove tag
tag @s remove Need_teleport