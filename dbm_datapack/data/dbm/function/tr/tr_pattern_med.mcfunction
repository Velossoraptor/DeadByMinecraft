# medium range
execute as @e[team=Killer] at @s run playsound minecraft:entity.warden.heartbeat master @a[team=!Killer,distance=11..25] ~ ~ ~ 65 .6 0

execute as @e[team=Killer] at @s run schedule function dbm:tr/tr_pattern_med 20t