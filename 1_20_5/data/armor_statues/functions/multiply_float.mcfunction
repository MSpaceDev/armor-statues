# 
# Description:	multiplies 2 floating point numbers
# Called by:	armor_statues:set
# Entity @s:	block display
# Parameters:
#   var1 (float): var1
#   var2 (float): var2
#   out (str): data source to output to
#
$data modify storage armor_statues:temp matrix set value \
    [ 0f, 0f, 0f, $(var1)f,\
    0f, 1f, 0f, 0f,\
    0f, 0f, 1f, 0f,\
    0f, 0f, 0f, 1f ]
$data modify entity @s transformation set value \
    [ 0f, 0f, 0f, 1f,\
    0f, 1f, 0f, 0f,\
    0f, 0f, 1f, 0f,\
    0f, 0f, 0f, $(var2)f ]
data modify storage armor_statues:temp matrix[-1] set from entity @s transformation.translation[0]
data modify entity @s transformation set from storage armor_statues:temp matrix
$data modify $(out) set from entity @s transformation.translation[0]