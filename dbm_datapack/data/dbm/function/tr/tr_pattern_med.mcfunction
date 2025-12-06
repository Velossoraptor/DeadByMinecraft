# medium range
execute as @e[tag=killer] at @s run playsound minecraft:entity.warden.heartbeat master @a[tag=!killer,distance=11..25] ~ ~ ~ 65 .6 0

execute as @e[tag=killer] at @s run schedule function dbm:tr/tr_pattern_med 20t