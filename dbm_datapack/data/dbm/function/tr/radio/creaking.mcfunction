# Creaking - Far
playsound minecraft:terror_radius.creaking hostile @a[distance=..55] ~ ~ ~ 4 1 0

execute as @e[team=Killer] at @s if entity @a[tag=radio] run schedule function dbm:tr/radio/creaking 3480t