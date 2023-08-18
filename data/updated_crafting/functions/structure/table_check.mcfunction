##
 # table_check.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run fill ~ ~ ~ ~ ~-1 ~ air replace
execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:dropper"}},distance=..3]
execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:polished_blackstone_button"}},distance=..3]

execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run loot spawn ~ ~-0.5 ~ loot updated_crafting:advanced_craftingtable

execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run kill @e[tag=updated_crafting.display.table.block,sort=nearest,limit=5,distance=..2]


execute unless block ~ ~ ~ polished_blackstone_button unless block ~ ~-1 ~ dropper run kill @s