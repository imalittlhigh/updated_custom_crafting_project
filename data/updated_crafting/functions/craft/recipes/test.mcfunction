##
 # test_recipe.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

##Storing number of items in slot
#                     Slot number 0-8 V                                Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result score $ucp.count.4 ucp_dummy run data get block ~ ~ ~ Items[{Slot:4b}].Count

##If items are correct number, give recipe and set craftingsuccess to true
#           Slot number 0-8 V                   V number of items needed for caraft
execute if score $ucp.count.4 ucp_dummy matches 1.. run loot spawn ~ ~1 ~ loot updated_crafting:recipes/test_recipe
#           Slot number 0-8 V                   V number of items needed for caraft
execute if score $ucp.count.4 ucp_dummy matches 1.. run data modify storage ucp:crafting success set value true

##Remove number of items that should be used for crafting per slot
#                    Slot number 0-8 V           V number of items needed for caraft
scoreboard players remove $ucp.count.4 ucp_dummy 1

##Store reduced number of items in storage from score
#                               Slot number 0-8 V                               Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute store result storage ucp:crafting count[4] byte 1 run scoreboard players get $ucp.count.4 ucp_dummy

##if crafted, reduce item count in dropper by using the modified stroage
#                                                                    Slot number 0-8 V                              Slot number 0-8 V     NEEDS TO BE THE SAME SLOT
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:4b}].Count set from storage ucp:crafting count[4]

##display particle if crafting was successful
execute if data storage ucp:crafting success positioned ~ ~1.2 ~ run particle cloud ~ ~ ~ 0 0 0 0 1
