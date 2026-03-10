execute as @e[tag=hatch] at @s run setblock ~ ~2 ~ air
execute as @e[tag=hatch] at @s run setblock ~ ~3 ~ waxed_exposed_copper_trapdoor[open=true,facing=east]
execute at @e[tag=hatch] run effect give @e[team=Survivor, distance=..1] minecraft:blindness 1 1 true
execute at @e[tag=hatch] if entity @e[team=Survivor, distance=..1] run tp @e[team=Survivor, distance=..1] -63 72 -78
execute at @e[tag=hatch] run particle minecraft:poof ~ ~2 ~ 0 0 0 .01 3 force
