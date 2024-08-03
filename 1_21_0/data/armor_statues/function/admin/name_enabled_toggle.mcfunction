#
# Description:	Enables copy/paste of armor stand Name
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #name_enabled as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #name_enabled as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #name_enabled as_angle 0
#
execute if score #name_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Copy/Pasting of armor stand Name has been set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
execute if score #name_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Copy/Pasting of armor stand Name has been set to ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
#
function armor_statues:admin
