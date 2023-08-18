##
 # test_recipe.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
##This is an example on how to use nbt edited items in crafting recipes (altho the part where u specify that is in this recipes predicate)

execute store result storage ucp:crafting count[0] byte 1 run data get block ~ ~ ~ Items[{Slot:0b}].Count

execute store result score $ucp.count.0 ucp_dummy run data get storage ucp:crafting count[0] 1

execute if score $ucp.count.0 ucp_dummy matches 1.. run loot spawn ~ ~1 ~ loot updated_crafting:recipes/nbtex_recipe
execute if score $ucp.count.0 ucp_dummy matches 1.. run data modify storage ucp:crafting success set value true

scoreboard players remove $ucp.count.0 ucp_dummy 1

execute store result storage ucp:crafting count[0] byte 1 run scoreboard players get $ucp.count.0 ucp_dummy

execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:0b}].Count set from storage ucp:crafting count[0]

execute if data storage ucp:crafting success positioned ~ ~1.2 ~ run particle cloud ~ ~ ~ 0 0 0 0 1