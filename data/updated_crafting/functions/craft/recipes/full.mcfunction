##
 # test_recipe.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
##Storing number of items in slot
#                     Slot number 0-8 V                                Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result score $ucp.count.0 ucp_dummy run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result score $ucp.count.1 ucp_dummy run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score $ucp.count.2 ucp_dummy run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score $ucp.count.3 ucp_dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score $ucp.count.4 ucp_dummy run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result score $ucp.count.5 ucp_dummy run data get block ~ ~ ~ Items[{Slot:5b}].Count
execute store result score $ucp.count.6 ucp_dummy run data get block ~ ~ ~ Items[{Slot:6b}].Count
execute store result score $ucp.count.7 ucp_dummy run data get block ~ ~ ~ Items[{Slot:7b}].Count
execute store result score $ucp.count.8 ucp_dummy run data get block ~ ~ ~ Items[{Slot:8b}].Count


##If items are correct number, give recipe and set craftingsuccess to true
#you need to check for every slot that is used in your recipe here, thats why there are 9 if scores
#           Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V
execute if score $ucp.count.0 ucp_dummy matches 1.. if score $ucp.count.1 ucp_dummy matches 1.. if score $ucp.count.2 ucp_dummy matches 1.. if score $ucp.count.3 ucp_dummy matches 1.. if score $ucp.count.4 ucp_dummy matches 1.. if score $ucp.count.5 ucp_dummy matches 1.. if score $ucp.count.6 ucp_dummy matches 1.. if score $ucp.count.7 ucp_dummy matches 1.. if score $ucp.count.8 ucp_dummy matches 1.. run loot spawn ~ ~1 ~ loot updated_crafting:recipes/full_recipe
#           Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V       Slot number 0-8 V      items needed V
execute if score $ucp.count.0 ucp_dummy matches 1.. if score $ucp.count.1 ucp_dummy matches 1.. if score $ucp.count.2 ucp_dummy matches 1.. if score $ucp.count.3 ucp_dummy matches 1.. if score $ucp.count.4 ucp_dummy matches 1.. if score $ucp.count.5 ucp_dummy matches 1.. if score $ucp.count.6 ucp_dummy matches 1.. if score $ucp.count.7 ucp_dummy matches 1.. if score $ucp.count.8 ucp_dummy matches 1.. run data modify storage ucp:crafting success set value true


##Remove number of items that should be used for crafting per slot
#                    Slot number 0-8 V           V number of items needed for caraft
scoreboard players remove $ucp.count.0 ucp_dummy 1
scoreboard players remove $ucp.count.1 ucp_dummy 1
scoreboard players remove $ucp.count.2 ucp_dummy 1
scoreboard players remove $ucp.count.3 ucp_dummy 1
scoreboard players remove $ucp.count.4 ucp_dummy 1
scoreboard players remove $ucp.count.5 ucp_dummy 1
scoreboard players remove $ucp.count.6 ucp_dummy 1
scoreboard players remove $ucp.count.7 ucp_dummy 1
scoreboard players remove $ucp.count.8 ucp_dummy 1


##Store reduced number of items in storage from score
#                               Slot number 0-8 V                               Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result storage ucp:crafting count[0] byte 1 run scoreboard players get $ucp.count.0 ucp_dummy
execute store result storage ucp:crafting count[1] byte 1 run scoreboard players get $ucp.count.1 ucp_dummy
execute store result storage ucp:crafting count[2] byte 1 run scoreboard players get $ucp.count.2 ucp_dummy
execute store result storage ucp:crafting count[3] byte 1 run scoreboard players get $ucp.count.3 ucp_dummy
execute store result storage ucp:crafting count[4] byte 1 run scoreboard players get $ucp.count.4 ucp_dummy
execute store result storage ucp:crafting count[5] byte 1 run scoreboard players get $ucp.count.5 ucp_dummy
execute store result storage ucp:crafting count[6] byte 1 run scoreboard players get $ucp.count.6 ucp_dummy
execute store result storage ucp:crafting count[7] byte 1 run scoreboard players get $ucp.count.7 ucp_dummy
execute store result storage ucp:crafting count[8] byte 1 run scoreboard players get $ucp.count.8 ucp_dummy


##if crafted, reduce item count in dropper by using the modified stroage
#                                                                    Slot number 0-8 V                              Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:0b}].Count set from storage ucp:crafting count[0]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:1b}].Count set from storage ucp:crafting count[1]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:2b}].Count set from storage ucp:crafting count[2]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:3b}].Count set from storage ucp:crafting count[3]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:4b}].Count set from storage ucp:crafting count[4]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:5b}].Count set from storage ucp:crafting count[5]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:6b}].Count set from storage ucp:crafting count[6]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:7b}].Count set from storage ucp:crafting count[7]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:8b}].Count set from storage ucp:crafting count[8]


##display particle if crafting was successful
execute if data storage ucp:crafting success positioned ~ ~1.2 ~ run particle cloud ~ ~ ~ 0 0 0 0 1