execute as @a[tag=!tracked] run team join villager

scoreboard players operation getScoreboard ID = @s ID
scoreboard players operation @s Range = max_range Range
function tc:rt_villager
team empty villager
#execute as @e[type=villager,tag=compass_click] if score @s ID = getScoreboard ID run function tc:rt_villager