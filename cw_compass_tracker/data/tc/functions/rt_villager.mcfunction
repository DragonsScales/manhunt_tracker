execute if score @s Range matches ..1 run tp @e[type=villager,tag=compass_click] ~ ~-1 ~
execute unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ water unless block ~ ~ ~ lava run tp @e[type=villager,tag=compass_click] ~ ~-1 ~
scoreboard players remove @s Range 1
execute if block ~ ~ ~ air if score @s Range matches 1.. positioned ^ ^ ^0.01 run function tc:rt_villager
execute if block ~ ~ ~ cave_air if score @s Range matches 1.. positioned ^ ^ ^0.01 run function tc:rt_villager
execute if block ~ ~ ~ void_air if score @s Range matches 1.. positioned ^ ^ ^0.01 run function tc:rt_villager
execute if block ~ ~ ~ water if score @s Range matches 1.. positioned ^ ^ ^0.01 run function tc:rt_villager
execute if block ~ ~ ~ lava if score @s Range matches 1.. positioned ^ ^ ^0.01 run function tc:rt_villager