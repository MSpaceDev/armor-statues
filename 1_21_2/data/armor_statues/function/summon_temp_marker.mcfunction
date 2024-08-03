# 
# Description:	Summons a temp marker to use as a pointer
# Called by:	armor_statues:trigger/pointing|armor_statues:trigger/pointing_small
# Entity @s:	armor stand
# Parameters:
#   x (float): x coord
#   y (float): y coord
#
# summons temp block display for multiplication
#
summon minecraft:block_display ^ ^ ^ {Tags:["as_temp_block_display"]}
execute store result storage armor_statues:temp multiply.var2 float 0.0001 run attribute @s minecraft:scale get 10000
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(x),\
            out: 'storage armor_statues:temp coord.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(y),\
            out: 'storage armor_statues:temp coord.y'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply

#
# Summons temp marker
#
function armor_statues:summon_temp_marker_helper with storage armor_statues:temp coord
#
# kill temp block display
#
kill @e[type=minecraft:block_display,tag=as_temp_block_display]