# Function that summons smoke particles at sprinting survivors feet, 4x/sec that can only be seen by Killers
# WARNING: Causes some latency with sprint detection, and is a lil buggy but it definitely works!!
execute as @e[team=Survivor] at @s if entity @p[predicate=dbm:sprinting] run particle minecraft:campfire_cosy_smoke ~ ~0 ~ 0 0 0 1 0 force @p[team=Killer]
execute as @e[team=Survivor] at @s if entity @p[predicate=dbm:sprinting] run particle minecraft:glow ~ ~0 ~ 0 0 0 1 0 force @p[team=Killer]
schedule function dbm:survivor/scratch 5t