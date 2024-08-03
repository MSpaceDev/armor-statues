#
# Description:	Sets up display and interaction for interactions
# Called by:	armor_statues:interactions/setup
# Entity @s:	armor_stand
# Parameters:
#   type (str): appendage to assign to
#   block (str): block for display entity
#   x (float): x coord
#   y (float): y coord
#   translation (float): translation of block display
#   scale (float): scale of display entity
#   entity (str): entity type to summon
#
# summons temp block display for multiplication
#
summon minecraft:block_display ^ ^ ^ {Tags:["as_temp_block_display"]}
execute store result storage armor_statues:temp multiply.var2 float 0.0001 run attribute @s minecraft:scale get 10000
$data merge storage armor_statues:temp {\
        display_setup: {\
            type: "$(type)",\
            block: "$(block)"\
        }\
    }
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(x),\
            out: 'storage armor_statues:temp display_setup.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(y),\
            out: 'storage armor_statues:temp display_setup.y'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(translation),\
            out: 'storage armor_statues:temp display_setup.translation'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
$data merge storage armor_statues:temp {\
        multiply: {\
            var1: $(scale),\
            out: 'storage armor_statues:temp display_setup.scale'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
#
# kill temp block display
#
kill @e[type=minecraft:block_display,tag=as_temp_block_display]

#
# Summons display
#
$execute rotated ~ 0 positioned ^ ^ ^ summon $(entity) run function armor_statues:interactions/display_setup_helper with storage armor_statues:temp display_setup

