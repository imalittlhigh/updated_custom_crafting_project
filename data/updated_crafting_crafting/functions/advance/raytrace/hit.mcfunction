##
 # hit.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#ends the loop function (you could also do that with the break command in 1.20+ (in the loop) but this works)
scoreboard players set $updated_crafting_project_raytrace_loop ucp_dummy 100

#item replace entity @s weapon.mainhand with air


#all of this is just cosmetics and things i execute at the block im looking for
setblock ~ ~ ~ dropper[facing=up]{CustomName:'{"text":"Advanced Crafting Station","italic":false}'} replace
setblock ~ ~1 ~ polished_blackstone_button[face=floor]
summon interaction ~0.5 ~1 ~0.5 {NoGravity:1b,width:0.4f,height:0.15f,response:1b,Tags:["updated_crafting.interaction.table_button"]}

summon block_display ~ ~1.0001 ~ {NoGravity:1b,Tags:["updated_crafting.display.table.block","updated_crafting.display.table.block.1"],block_state:{Name:"minecraft:crafting_table"}}
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.1,limit=1,sort=nearest] transformation.scale set value [0.9f,0f,0.9f]
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.1,limit=1,sort=nearest] transformation.translation set value [0.05f,0f,0.05f]

summon block_display ~1.0001 ~ ~ {NoGravity:1b,Tags:["updated_crafting.display.table.block","updated_crafting.display.table.block.2"],block_state:{Name:"minecraft:crafting_table"}}
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.2,limit=1,sort=nearest] transformation.scale set value [0.0f,0.9f,0.9f]
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.2,limit=1,sort=nearest] transformation.translation set value [0.0f,0.05f,0.05f]

summon block_display ~-0.0001 ~ ~ {NoGravity:1b,Tags:["updated_crafting.display.table.block","updated_crafting.display.table.block.3"],block_state:{Name:"minecraft:crafting_table"}}
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.3,limit=1,sort=nearest] transformation.scale set value [0.0f,0.9f,0.9f]
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.3,limit=1,sort=nearest] transformation.translation set value [0.0f,0.05f,0.05f]

summon block_display ~ ~ ~1.0001 {NoGravity:1b,Tags:["updated_crafting.display.table.block","updated_crafting.display.table.block.4"],block_state:{Name:"minecraft:crafting_table"}}
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.4,limit=1,sort=nearest] transformation.scale set value [0.9f,0.9f,0.0f]
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.4,limit=1,sort=nearest] transformation.translation set value [0.05f,0.05f,0.0f]

summon block_display ~ ~ ~-0.0001 {NoGravity:1b,Tags:["updated_crafting.display.table.block","updated_crafting.display.table.block.5"],block_state:{Name:"minecraft:crafting_table"}}
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.5,limit=1,sort=nearest] transformation.scale set value [0.9f,0.9f,0.0f]
data modify entity @e[type=block_display,tag=updated_crafting.display.table.block.5,limit=1,sort=nearest] transformation.translation set value [0.05f,0.05f,0.0f]


clear @s enchanted_book{custom_crafting_project_book:1b} 1