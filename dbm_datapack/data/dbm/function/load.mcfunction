#This function will run on world loading or data pack loading
scoreboard objectives add gen-progress dummy "Generator Progress"
scoreboard objectives add repair-active dummy "Repair Active"
scoreboard objectives add num-active dummy "Number of Active Repair Points"
scoreboard objectives add random-delay dummy "Random Delay"
scoreboard objectives add qte-countdown dummy "QTE Countdown"
scoreboard objectives add qte-active dummy "QTE Active"

# Initialize all armor stands with the "gen-prog" tag to have 0 progress and 0 active repair points
execute as @e[tag=gen-prog] run scoreboard players set @s gen-progress 0
execute as @e[tag=gen-prog] run scoreboard players set @s num-active 0
# Initialize all armor stands with the "repair_point" tag to have 0 repair-active score
execute as @e[tag=repair_point] run scoreboard players set @s repair-active 0
# initialize all players to have 0 random-delay score
execute as @e[tag=repair_point] run scoreboard players set @s random-delay 0
# initialize all armor stands with the "repair_point" tag to have 0 qte-countdown score
execute as @e[tag=repair_point] run scoreboard players set @s qte-countdown 0

