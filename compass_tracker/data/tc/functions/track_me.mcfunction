scoreboard players reset @a ID
scoreboard players set current_id ID 1
tag @a remove tracked
tag @s add tracked
kill @e[type=marker,tag=tracker]
kill @e[type=villager,tag=compass_click]
summon marker ~ ~ ~ {Tags:["coordinate_tracker"]}
execute as @a[tag=!tracked] run function tc:create_villager
execute as @a[tag=!tracked] run function tc:get_compass