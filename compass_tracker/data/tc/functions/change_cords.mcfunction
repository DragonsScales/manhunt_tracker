#join villagers to team villager first, then players
team join villager @e[tag=compass_click]
team join villager @a

scoreboard players operation @s Range = max_range Range
scoreboard players operation .search temp = @s ID
execute as @e[type=villager] if score @s ID = .search temp run scoreboard players operation @s Range = max_range Range
execute as @e[type=villager] if score @s ID = .search temp run function tc:rt_villager