tag @s add n.motion_modified
execute on origin unless entity @s[type=player] run return fail

# execute this function once *as* your splash_potion entity

# Save the original Motion to a storage
data modify storage dbm:potion Motion set from entity @s Motion


execute store result score #potion pos run data get storage dbm:potion Motion[1] 1000
execute store result storage dbm:potion Motion[1] double 0.000001 run scoreboard players operation #potion pos *= #potion factor
execute store result score #potion pos run data get storage dbm:potion Motion[2] 1000
execute store result storage dbm:potion Motion[2] double 0.000001 run scoreboard players operation #potion pos *= #potion factor

# Copy this new Motion to the splash potion entity
data modify entity @s Motion set from storage dbm:potion Motion