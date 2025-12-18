#This function runs every tick
function dbm:generator

execute as @e[type=lingering_potion,tag=!n.motion_modified] at @s run function dbm:power/clown/modifymotion