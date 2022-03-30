scoreboard objectives add track_me trigger
scoreboard players enable @a track_me

execute as @a if score @s track_me matches 1.. run function tc:track_me
execute as @a unless score @s track_me matches 1.. run schedule function tc:trigger_track_me 10t