# Solo mode
execute if score !Mode OptionsInGame matches 0 run team join 200_IG_Creator @s[tag=MapMaker]
execute if score !Mode OptionsInGame matches 0 run team join 210_IG_Friend @s[tag=Friend]
execute if score !Mode OptionsInGame matches 0 run team join 220_IG_Mojang @s[tag=Mojang]
execute if score !Mode OptionsInGame matches 0 run team join 230_IG_Tester @s[tag=Tester]
execute if score !Mode OptionsInGame matches 0 run team join 290_IG_Player @s[tag=Player]

# Team mode
execute if score !Mode OptionsInGame matches 1 run team join 201_IG_B_Creator @s[nbt={Tags:["Blue","MapMaker"]}]
execute if score !Mode OptionsInGame matches 1 run team join 211_IG_B_Friend @s[nbt={Tags:["Blue","Friend"]}]
execute if score !Mode OptionsInGame matches 1 run team join 221_IG_B_Mojang @s[nbt={Tags:["Blue","Mojang"]}]
execute if score !Mode OptionsInGame matches 1 run team join 231_IG_B_Tester @s[nbt={Tags:["Blue","Tester"]}]
execute if score !Mode OptionsInGame matches 1 run team join 291_IG_B_Player @s[nbt={Tags:["Blue","Player"]}]

execute if score !Mode OptionsInGame matches 1 run team join 202_IG_W_Creator @s[nbt={Tags:["White","MapMaker"]}]
execute if score !Mode OptionsInGame matches 1 run team join 212_IG_W_Friend @s[nbt={Tags:["White","Friend"]}]
execute if score !Mode OptionsInGame matches 1 run team join 222_IG_W_Mojang @s[nbt={Tags:["White","Mojang"]}]
execute if score !Mode OptionsInGame matches 1 run team join 232_IG_W_Tester @s[nbt={Tags:["White","Tester"]}]
execute if score !Mode OptionsInGame matches 1 run team join 292_IG_W_Player @s[nbt={Tags:["White","Player"]}]

execute if score !Mode OptionsInGame matches 1 run team join 203_IG_R_Creator @s[nbt={Tags:["Red","MapMaker"]}]
execute if score !Mode OptionsInGame matches 1 run team join 213_IG_R_Friend @s[nbt={Tags:["Red","Friend"]}]
execute if score !Mode OptionsInGame matches 1 run team join 223_IG_R_Mojang @s[nbt={Tags:["Red","Mojang"]}]
execute if score !Mode OptionsInGame matches 1 run team join 233_IG_R_Tester @s[nbt={Tags:["Red","Tester"]}]
execute if score !Mode OptionsInGame matches 1 run team join 293_IG_R_Player @s[nbt={Tags:["Red","Player"]}]

# Spectator
team join 300_S_Creator @s[nbt={Tags:["In_game_spectating","MapMaker"]}]
team join 310_S_Friend @s[nbt={Tags:["In_game_spectating","Friend"]}]
team join 320_S_Mojang @s[nbt={Tags:["In_game_spectating","Mojang"]}]
team join 330_S_Tester @s[nbt={Tags:["In_game_spectating","Tester"]}]
team join 390_S_Player @s[nbt={Tags:["In_game_spectating","Player"]}]