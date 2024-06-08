#
# Description:	Enable option to get the adjustment wand by crafting
# Called by:	armor_statues:admin via chat link
# Entity @s:	player
#
scoreboard players set #as_success as_angle 0
scoreboard players operation #as_success as_angle = #adjustment_craftable as_angle
execute if score #as_success as_angle matches 0 run scoreboard players set #adjustment_craftable as_angle 1
execute if score #as_success as_angle matches 1 run scoreboard players set #adjustment_craftable as_angle 0
#
execute if score #adjustment_craftable as_angle matches 1 run tellraw @s [\
    {\
        "text":"Getting the adjustment wand via renaming has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Enabled"\
    }\
]
execute if score #adjustment_craftable as_angle matches 0 run tellraw @s [\
    {\
        "text":"Getting the adjustment wand via renaming has been ",\
        "color":"aqua"\
    },\
    {\
        "text":"Disabled"\
    }\
]
#
function armor_statues:admin
