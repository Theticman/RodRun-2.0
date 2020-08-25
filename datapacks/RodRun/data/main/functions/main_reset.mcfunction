# Game finished ?
execute if score !Timer Reset matches -1 run function main:reset/test_conditions

# Reset function
execute if score !Timer Reset matches 0.. run function main:reset/reset