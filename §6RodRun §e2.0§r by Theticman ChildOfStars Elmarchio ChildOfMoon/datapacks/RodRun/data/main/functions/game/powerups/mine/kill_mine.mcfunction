# Tag add for test
tag @s add Kill_mine_test

# Kill parts
execute at @s positioned ~ ~ ~ as @e[name=game_mine,type=armor_stand,distance=..2] if score @s Mine_id = @e[tag=Kill_mine_test,limit=1] Mine_id run kill @s[tag=!Kill_mine_test]
execute at @s positioned ~ ~ ~ as @e[name=game_mine_tnt,type=armor_stand,distance=..2] if score @s Mine_id = @e[tag=Kill_mine_test,limit=1] Mine_id run kill @s[tag=!Kill_mine_test]
execute at @s positioned ~ ~ ~ as @e[name=game_mine_button,type=armor_stand,distance=..2] if score @s Mine_id = @e[tag=Kill_mine_test,limit=1] Mine_id run kill @s[tag=!Kill_mine_test]

# Kill self
kill @s