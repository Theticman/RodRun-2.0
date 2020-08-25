# Timer update
scoreboard players add !Timer_button Starting 1
execute if score !Timer_button Starting matches 11.. run scoreboard players set !Timer_button Starting -1

# Remove buttons
execute if score !Timer_button Starting matches 0 run setblock 8 22 -35 air destroy
execute if score !Timer_button Starting matches 0 run setblock 23 22 -25 air destroy

# Place buttons
execute if score !Timer_button Starting matches 10 run setblock 8 22 -35 stone_button[facing=north,powered=false]
execute if score !Timer_button Starting matches 10 run setblock 23 22 -25 stone_button[face=floor,facing=south]