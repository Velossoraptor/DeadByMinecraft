# Trigger gate animation
# Untested
execute as @e[tag=gateopennorth, tag=active] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=gateopeneast, tag=active] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=gateopensouth, tag=active] at @s run setblock ~ ~ ~ redstone_block
execute as @e[tag=gateopenwest, tag=active] at @s run setblock ~ ~ ~ redstone_block