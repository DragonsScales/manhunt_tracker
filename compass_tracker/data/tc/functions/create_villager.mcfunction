execute as @s run scoreboard players operation @s ID = current_id ID

#Might get rid of tag if unneeded
execute as @s run summon minecraft:villager 0 330 0 {NoAI:1b,Silent:1b,CanPickUpLoot:0b,NoGravity:1b,Invulnerable:1b,Tags:["compass_click","init"]}
execute as @e[tag=init] run scoreboard players operation @s ID = current_id ID
tag @e remove init

scoreboard players add current_id ID 1
function tc:add_effects