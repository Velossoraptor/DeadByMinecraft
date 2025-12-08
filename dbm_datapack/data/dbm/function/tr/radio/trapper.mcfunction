# Trapper - Mellohi
playsound minecraft:terror_radius.trapper master @a[distance=..55] ~ ~ ~ 4 1 0

execute as @e[team=Killer] at @s if entity @a[tag=radio] run schedule function dbm:tr/radio/trapper 1920t
