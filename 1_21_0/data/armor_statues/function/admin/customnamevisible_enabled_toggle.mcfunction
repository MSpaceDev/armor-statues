#
# Description:	Enables copy/paste of CustomNameVisible
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #cnv_enabled as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #cnv_enabled as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #cnv_enabled as_angle 0
#
execute if score #cnv_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Copy/Pasting of value CustomNameVisible has been set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
execute if score #cnv_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Copy/Pasting of value CustomNameVisible has been set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
#
function armor_statues:admin
