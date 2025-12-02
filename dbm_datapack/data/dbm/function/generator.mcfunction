# give repair_point stands the score "active" of 1 when a player is crouching near them and remove it if not
execute as @e[tag=repair_point,scores={repair-active=..0}] at @s if entity @p[distance=..0.3,predicate=dbm:crouching] run function dbm:repairflag
execute as @e[tag=repair_point,scores={repair-active=1..}] at @s unless entity @p[distance=..0.3,predicate=dbm:crouching] run function dbm:repairflag

# Increment gen-progress based on number of active repair points nearby
execute as @e[tag=gen-prog,scores={num-active=1}] run scoreboard players add @s gen-progress 11
execute as @e[tag=gen-prog,scores={num-active=2}] run scoreboard players add @s gen-progress 18
execute as @e[tag=gen-prog,scores={num-active=3}] run scoreboard players add @s gen-progress 23
execute as @e[tag=gen-prog,scores={num-active=4..}] run scoreboard players add @s gen-progress 25

# Set the name of armor stands with the "gen-prog" tag to show their current progress
execute as @e[tag=gen-prog,scores={gen-progress=1..2000}] run data modify entity @s CustomName set value {text:"Progress: █░░░░░░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=2001..4000}] run data modify entity @s CustomName set value {text:"Progress: ██░░░░░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=4001..6000}] run data modify entity @s CustomName set value {text:"Progress: ███░░░░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=6001..8000}] run data modify entity @s CustomName set value {text:"Progress: ████░░░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=8001..10000}] run data modify entity @s CustomName set value {text:"Progress: █████░░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=10001..12000}] run data modify entity @s CustomName set value {text:"Progress: ██████░░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=12001..14000}] run data modify entity @s CustomName set value {text:"Progress: ███████░░░"}
execute as @e[tag=gen-prog,scores={gen-progress=14001..16000}] run data modify entity @s CustomName set value {text:"Progress: ████████░░"}
execute as @e[tag=gen-prog,scores={gen-progress=16001..18000}] run data modify entity @s CustomName set value {text:"Progress: █████████░"}
execute as @e[tag=gen-prog,scores={gen-progress=18001..19999}] run data modify entity @s CustomName set value {text:"Progress: █████████▒"}

execute as @a[scores={random-delay=..6}] run scoreboard players add @a random-delay 1
execute as @a[scores={random-delay=7..}] run scoreboard players set @s random-delay 0

# increment qte-countdown for active repair points
execute as @e[tag=repair_point,scores={repair-active=1..}] run scoreboard players add @s qte-countdown 1

# when qte-countdown reaches 241, set qte-active to 1, 2, or 3 based on random-delay
execute as @e[tag=repair_point,scores={qte-countdown=241..,repair-active=1..,random-delay=0..2}] run scoreboard players set @s qte-active 1
execute as @e[tag=repair_point,scores={qte-countdown=241..,repair-active=1..,random-delay=3..5}] run scoreboard players set @s qte-active 2
execute as @e[tag=repair_point,scores={qte-countdown=241..,repair-active=1..,random-delay=6..}] run scoreboard players set @s qte-active 3

# if repair point stops being active while qte-active is greater than 0, reset qte-active, qte-countdown and subtract 3500 from gen-progress of nearest gen-prog stand
execute as @e[tag=repair_point,scores={repair-active=..0,qte-active=1..}] at @s run scoreboard players remove @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] gen-progress 3500
execute as @e[tag=repair_point,scores={repair-active=..0,qte-active=1..}] at @s run scoreboard players set @s qte-active 0
execute as @e[tag=repair_point,scores={repair-active=..0,qte-active=1..}] at @s run scoreboard players set @s qte-countdown 0

# reset qte-active and qte-countdown when qte-countdown reaches  270
execute as @e[tag=repair_point,scores={qte-countdown=270..}] run scoreboard players set @s qte-active 0
execute as @e[tag=repair_point,scores={qte-countdown=270..}] run scoreboard players set @s qte-countdown 0
execute as @e[tag=repair_point,scores={qte-countdown=..240}] run scoreboard players set @s qte-active 0

# play sound to player when qte-countdown reaches 241
execute as @e[tag=repair_point,scores={qte-countdown=241}] at @s run playsound block.anvil.land master @p ~ ~ ~ 1 2

# display qte above actionbar when qte-countdown is between 241 and 270
execute as @e[tag=repair_point,scores={qte-countdown=241..243,qte-active=1}] at @s run title @p actionbar {"text":"●▬▨▨▨▬▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=244..246,qte-active=1}] at @s run title @p actionbar {"text":"▬●▨▨▨▬▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=247..249,qte-active=1}] at @s run title @p actionbar {"text":"▬▬◌▨▨▬▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=250..252,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨◌▨▬▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=253..255,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨▨◌▬▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=256..258,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨▨▨●▬▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=259..261,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨▨▨▬●▬▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=262..264,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨▨▨▬▬●▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=265..267,qte-active=1}] at @s run title @p actionbar {"text":"▬▬▨▨▨▬▬▬●▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=268..270,qte-active=1}] at @s run title @p actionbar {"text":"💥 💀 💥","color":"green"}

# display qte above actionbar when qte-countdown is between 241 and 270
execute as @e[tag=repair_point,scores={qte-countdown=241..243,qte-active=2}] at @s run title @p actionbar {"text":"●▬▬▬▬▨▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=244..246,qte-active=2}] at @s run title @p actionbar {"text":"▬●▬▬▬▨▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=247..249,qte-active=2}] at @s run title @p actionbar {"text":"▬▬●▬▬▨▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=250..252,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬●▬▨▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=253..255,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬▬●▨▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=256..258,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬▬▬◌▨▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=259..261,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬▬▬▨◌▨▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=262..264,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬▬▬▨▨◌▬▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=265..267,qte-active=2}] at @s run title @p actionbar {"text":"▬▬▬▬▬▨▨▨●▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=268..270,qte-active=2}] at @s run title @p actionbar {"text":"💥 💀 💥","color":"green"}

# display qte above actionbar when qte-countdown is between 241 and 270
execute as @e[tag=repair_point,scores={qte-countdown=241..243,qte-active=3}] at @s run title @p actionbar {"text":"●▬▬▬▬▬▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=244..246,qte-active=3}] at @s run title @p actionbar {"text":"▬●▬▬▬▬▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=247..249,qte-active=3}] at @s run title @p actionbar {"text":"▬▬●▬▬▬▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=250..252,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬●▬▬▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=253..255,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬▬●▬▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=256..258,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬▬▬●▨▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=259..261,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬▬▬▬◌▨▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=262..264,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬▬▬▬▨◌▨▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=265..267,qte-active=3}] at @s run title @p actionbar {"text":"▬▬▬▬▬▬▨▨◌▬","color":"green"}
execute as @e[tag=repair_point,scores={qte-countdown=268..270,qte-active=3}] at @s run title @p actionbar {"text":"💥 💀 💥","color":"green"}

# if qte-countdown reaches 268 to 270, subtract 5000 from gen-progress of nearest gen-prog stand
execute as @e[tag=repair_point,scores={qte-countdown=268..270,qte-active=1..}] at @s run scoreboard players remove @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] gen-progress 5000

# 1: if the player recieving the qte prompt has a redstone signal on the block below them while qte-countdown of the nearest repair point is between 250 and 258 and has a qte-active score of 1, add 7000 to gen-progress of nearest gen-prog stand and reset qte-active and qte-countdown
execute as @e[tag=repair_point,scores={qte-countdown=247..255,qte-active=1}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players add @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] gen-progress 500
execute as @e[tag=repair_point,scores={qte-countdown=247..255,qte-active=1}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players set @s qte-countdown 0

# 2: if the player recieving the qte prompt has a redstone signal on the block below them while qte-countdown of the nearest repair point is between 250 and 258 and has a qte-active score of 1, add 7000 to gen-progress of nearest gen-prog stand and reset qte-active and qte-countdown
execute as @e[tag=repair_point,scores={qte-countdown=256..264,qte-active=2}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players add @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] gen-progress 500
execute as @e[tag=repair_point,scores={qte-countdown=256..264,qte-active=2}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players set @s qte-countdown 0

# 3: if the player recieving the qte prompt has a redstone signal on the block below them while qte-countdown of the nearest repair point is between 250 and 258 and has a qte-active score of 1, add 7000 to gen-progress of nearest gen-prog stand and reset qte-active and qte-countdown
execute as @e[tag=repair_point,scores={qte-countdown=259..267,qte-active=3}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players add @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] gen-progress 500
execute as @e[tag=repair_point,scores={qte-countdown=259..267,qte-active=3}] at @s if block ~ ~ ~ minecraft:redstone_wire[power=15] run scoreboard players set @s qte-countdown 0