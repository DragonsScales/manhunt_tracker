#Remove Count later, not sure if it'll mess anything up right now
execute as @a[tag=!tracked] if data entity @s SelectedItem{id:"minecraft:compass",tag:{tracker_compass:1b}} at @s anchored eyes positioned ^ ^ ^ run function tc:change_cords
execute as @a[tag=!tracked] unless data entity @s SelectedItem{id:"minecraft:compass",tag:{tracker_compass:1b}} run function tc:reset_cords
execute as @a store result score @s Stick run clear @s stick{Enchantments:[{id:knockback,lvl:7}]} 0
execute as @a[scores={Stick=1..}] run function tc:track_me

#Set the compass coordinates in shulker box
data modify block 0 -64 0 Items[0].tag.LodestonePos.X set from entity @a[tag=tracked,limit=1] Pos[0]
data modify block 0 -64 0 Items[0].tag.LodestonePos.Y set from entity @a[tag=tracked,limit=1] Pos[1]
data modify block 0 -64 0 Items[0].tag.LodestonePos.Z set from entity @a[tag=tracked,limit=1] Pos[2]
data modify block 0 -64 0 Items[0].tag.LodestoneDimension set from entity @a[tag=tracked,limit=1] Dimension

execute as @a[tag=!tracked] if score @s RightClick matches 1.. run function tc:update_compass