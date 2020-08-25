# Item
execute as @a[tag=!In_lobby_informations] run function main:lobby/informations/teleport/information_item
execute as @a[tag=In_lobby_informations] run function main:lobby/informations/teleport/lobby_item

# cooldown
execute as @a[scores={Informations=0..}] run function main:lobby/informations/teleport/cooldown

# Tag in
execute as @a[x=62,y=27,z=-124,dx=2,dy=3,dz=8,tag=!In_lobby_informations] run function main:lobby/informations/teleport/tag_in

# Tag out
execute as @a[x=59,y=27,z=-123,dx=1,dy=3,dz=6,tag=In_lobby_informations] run function main:lobby/informations/teleport/tag_out
