# Wraith
playsound minecraft:terror_radius.wraith master @a[distance=..55] ~ ~ ~ 4 1 0

execute as @e[team=Killer] at @s if entity @a[tag=radio] run schedule function dbm:tr/radio/wraith 3560t