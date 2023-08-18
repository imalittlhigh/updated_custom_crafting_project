##
 # test_recipe.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

execute store result storage ucp:crafting count[4] byte 1 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result storage ucp:crafting count[1] byte 1 run data get block ~ ~ ~ Items[{Slot:1b}].Count

execute store result score $ucp.count.4 ucp_dummy run data get storage ucp:crafting count[4] 1
execute store result score $ucp.count.1 ucp_dummy run data get storage ucp:crafting count[1] 1

execute if score $ucp.count.4 ucp_dummy matches 1.. if score $ucp.count.1 ucp_dummy matches 4.. run loot spawn ~ ~1 ~ loot updated_crafting:recipes/test2_recipe
execute if score $ucp.count.4 ucp_dummy matches 1.. if score $ucp.count.1 ucp_dummy matches 4.. run data modify storage ucp:crafting success set value true

scoreboard players remove $ucp.count.4 ucp_dummy 1
scoreboard players remove $ucp.count.1 ucp_dummy 4

execute store result storage ucp:crafting count[4] byte 1 run scoreboard players get $ucp.count.4 ucp_dummy
execute store result storage ucp:crafting count[1] byte 1 run scoreboard players get $ucp.count.1 ucp_dummy

execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:4b}].Count set from storage ucp:crafting count[4]
execute if data storage ucp:crafting success run data modify block ~ ~ ~ Items[{Slot:1b}].Count set from storage ucp:crafting count[1]

execute if data storage ucp:crafting success positioned ~ ~1.2 ~ run particle cloud ~ ~ ~ 0 0 0 0 1
