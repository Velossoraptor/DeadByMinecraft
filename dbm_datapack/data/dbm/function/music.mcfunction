# Checks for killer team and Id and runs respective music functions
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=1}] run function dbm:tr/music/clown
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=2}] run function dbm:tr/music/deathslinger
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=3}] run function dbm:tr/music/huntress
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=4}] run function dbm:tr/music/legion
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=5}] run function dbm:tr/music/nurse
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=6}] run function dbm:tr/music/pinhead
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=7}] run function dbm:tr/music/trapper
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=8}] run function dbm:tr/music/wraith
execute as @e[team=Killer] at @s if entity @s[scores={killer-id=9}] run function dbm:tr/music/xeno
# execute as @e[team=Killer] at @s if entity @s[scores={killer-id=10}] run function dbm:tr/music/creaking

schedule function dbm:music 60t replace