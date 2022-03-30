forceload add 0 0
setblock 0 -64 0 air
setblock 0 -64 0 shulker_box{Items:[{Slot: 0b, id: "minecraft:compass", Count: 1b, tag:{tracker_compass:1b,LodestoneDimension: "minecraft:overworld", LodestoneTracked: 0b, LodestonePos: {X: 0, Y: 0, Z: 0}}},{Slot: 1b, id: "minecraft:compass", Count: 1b, tag:{tracker_compass:1b,LodestoneDimension: "minecraft:the_nether", LodestoneTracked: 0b, LodestonePos: {X: 0, Y: 0, Z: 0}}},{Slot: 2b, id: "minecraft:compass", Count: 1b, tag:{tracker_compass:1b,LodestoneDimension: "minecraft:the_end", LodestoneTracked: 0b, LodestonePos: {X: 0, Y: 0, Z: 0}}}]}
setblock 0 -63 0 bedrock

scoreboard objectives add Cords dummy
scoreboard players set X Cords 0
scoreboard players set Y Cords 0
scoreboard players set Z Cords 0

scoreboard objectives add ID dummy
scoreboard players set current_id ID 0

scoreboard objectives add Range dummy
scoreboard players set max_range Range 330

scoreboard objectives add tc_compass dummy

scoreboard objectives add RightClick minecraft.custom:talked_to_villager

team add villager
team modify villager collisionRule never

function tc:trigger_track_me