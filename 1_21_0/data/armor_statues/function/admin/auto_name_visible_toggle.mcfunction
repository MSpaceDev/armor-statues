#
# Description:	Enables auto visible names for armor stands.
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #auto_name_visible as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #auto_name_visible as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #auto_name_visible as_angle 0
#
execute if score #auto_name_visible as_angle matches 1 run tellraw @s [\
    {\
        "text":"Auto name visibility set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
execute if score #auto_name_visible as_angle matches 0 run tellraw @s [\
    {\
        "text":"Auto name visibility set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
#
function armor_statues:admin
