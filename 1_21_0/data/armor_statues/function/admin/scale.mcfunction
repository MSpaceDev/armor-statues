#
# Description:	sets min/max of scale
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
# Parameters:
#   scale_min (float): min scale to cap armor stands
#   scale_max (float): man scale to cap armor stands
#
$data merge storage armor_statues:admin {\
        scale: {\
            scale_min: $(scale_min),\
            scale_max: $(scale_max)\
        }\
    }
execute store result score #scale_min as_angle run data get storage armor_statues:admin scale.scale_min 1000
execute store result score #scale_max as_angle run data get storage armor_statues:admin scale.scale_max 1000
#
# limits scale to physical game caps
#
execute if score #scale_min as_angle matches ..62 run scoreboard players set #scale_min as_angle 63
execute if score #scale_min as_angle matches 1001.. run scoreboard players set #scale_min as_angle 1000
execute if score #scale_max as_angle matches ..999 run scoreboard players set #scale_max as_angle 1000
execute if score #scale_max as_angle matches 16001.. run scoreboard players set #scale_max as_angle 16000
#
# stores into storage
#
execute store result storage armor_statues:admin scale.scale_min float 0.001 run scoreboard players get #scale_min as_angle
execute store result storage armor_statues:admin scale.scale_max float 0.001 run scoreboard players get #scale_max as_angle
tellraw @s [\
    {\
        "text":"Scale set to - Min: ",\
        "color":"aqua"\
    },\
    {\
        "storage":"armor_statues:admin",\
        "nbt":"scale.scale_min"\
    },\
    {\
        "text":" Max: ",\
        "color":"aqua"\
    },\
    {\
        "storage":"armor_statues:admin",\
        "nbt":"scale.scale_max"\
    }\
]
#
function armor_statues:admin
