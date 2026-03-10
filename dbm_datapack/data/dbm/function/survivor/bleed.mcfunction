# Play injured sound and particle
# Untested
execute as @e[team=Survivor, tag=injured] at @s run particle minecraft:dragon_breath ~ ~0 ~ 0 0 0 1 0 force @a
execute as @e[team=Survivor, tag=injured] at @s run playsound minecraft:entity.player.hurt master @a[distance=..10] ~ ~ ~ 80 1 0
schedule function dbm:survivor/bleed 25t