# Legion - Scooby doo
playsound minecraft:terror_radius.legion master @a[distance=..55] ~ ~ ~ 4 1 0

execute as @e[team=Killer] at @s if entity @a[tag=radio] run schedule function dbm:tr/radio/legion 480t