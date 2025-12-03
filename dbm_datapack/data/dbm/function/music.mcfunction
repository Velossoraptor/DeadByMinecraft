# Checks for killer tags and runs respective music functions
execute as @e[tag=killer] at @s if entity @s[tag=clown] run function dbm:tr/music/clown
execute as @e[tag=killer] at @s if entity @s[tag=deathslinger] run function dbm:tr/music/deathslinger
execute as @e[tag=killer] at @s if entity @s[tag=huntress] run function dbm:tr/music/huntress
execute as @e[tag=killer] at @s if entity @s[tag=legion] run function dbm:tr/music/legion
execute as @e[tag=killer] at @s if entity @s[tag=nurse] run function dbm:tr/music/nurse
execute as @e[tag=killer] at @s if entity @s[tag=pinhead] run function dbm:tr/music/pinhead
execute as @e[tag=killer] at @s if entity @s[tag=trapper] run function dbm:tr/music/trapper
execute as @e[tag=killer] at @s if entity @s[tag=wraith] run function dbm:tr/music/wraith
execute as @e[tag=killer] at @s if entity @s[tag=xeno] run function dbm:tr/music/xeno