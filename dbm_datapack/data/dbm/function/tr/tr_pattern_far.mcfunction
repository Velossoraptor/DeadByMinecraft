# long range
execute as @e[team=Killer] at @s run playsound minecraft:entity.warden.heartbeat master @a[team=!Killer,distance=26..40] ~ ~ ~ 50 .3 0

execute as @e[team=Killer] at @s if entity @e[team=Killer] run schedule function dbm:tr/tr_pattern_far 30t