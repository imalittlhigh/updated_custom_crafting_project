##
 # crafted_node_stone.mcfunction
 # 
 #
 # Created by imalittlhigh
##

#revoking the recipe
recipe take @s updated_crafting_crafting:craftingtable

#revoking the advancement
advancement revoke @s only updated_crafting_crafting:craftingtable_adv

#clearing the crafted knowledge book
clear @s minecraft:knowledge_book 1

#giving corrected item
give @s enchanted_book{display:{Name:'{"text":"Crafting Table Advancer","italic":false}',Lore:['[{"keybind":"key.use","color":"gray"},{"text":" on Crafting Table","color":"gray"}]','{"text":"to advance it","color":"gray"}']},custom_crafting_project_book:1b} 1