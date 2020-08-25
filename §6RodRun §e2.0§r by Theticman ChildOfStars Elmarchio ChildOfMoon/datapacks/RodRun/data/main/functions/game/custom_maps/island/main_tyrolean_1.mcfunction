# Particles
execute if score !Start Tyrolean_id matches 0 run function main:game/custom_maps/island/tyrolean_1/particle

# Tyrolean init
execute if score !Start Tyrolean_id matches 0 as @a[x=-420,y=24,z=533,dx=0,dy=0,dz=0,gamemode=adventure,tag=!In_game_tyrolean,limit=1] run function main:game/custom_maps/island/tyrolean_1/init

# Timer
execute as @e[name=game_tyrolean_1_armor,type=minecraft:armor_stand] run function main:game/custom_maps/island/tyrolean_1/animation