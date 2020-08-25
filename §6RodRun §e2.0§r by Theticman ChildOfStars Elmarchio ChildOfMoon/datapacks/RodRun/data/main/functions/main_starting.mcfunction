# Button click test
execute if block 8 22 -35 stone_button[powered=true] if score !Timer Starting matches -1 run scoreboard players set !Timer Starting 0
execute if block 23 22 -25 stone_button[powered=true] if score !Timer Starting matches -1 run scoreboard players set !Timer Starting 0


# Start init function (test the conditions)
execute if score !Timer Starting matches 0 run function main:starting/start_init

# Start function
execute if score !Timer Starting matches 1.. run function main:starting/start

# Start no spam function
execute if score !Timer_button Starting matches 0.. run function main:starting/start_no_spam
