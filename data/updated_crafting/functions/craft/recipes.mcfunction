##
 # recipes.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

##Checks all recipes if they fit
#very important:
#   if you have recipes, that use the same slot with the same ingredient (here test and test2, both have cobble in slot 4) you need to set a priprity
#   it makes the most sense to set the proirity of more complex recipes over simpler, since you cant craft the complex ones if you do it the other way around
#   recipes that are further up in this file, have higher priority. You can notice that test2_recipe is higher than test_recipe
#   that means if both could be crafted, only the test2_recipe will be crafted, since that is the more copmlex one
#   you also notice that full_recipe is between the two test_recipes. this is because it also uses slot 4 filled with cobblestone, so it needs to have prio higher than test_recipe
#   or you could not craft it (THIS IS VERY IMPORTANT TO KEEP IN MIND)

#                    Predicate of crafting recipe                                                                function of crafting recipe
execute if predicate updated_crafting:recipes/test2_recipe unless data storage ucp:crafting success run function updated_crafting:craft/recipes/test2

execute if predicate updated_crafting:recipes/full_recipe unless data storage ucp:crafting success run function updated_crafting:craft/recipes/full

execute if predicate updated_crafting:recipes/test_recipe unless data storage ucp:crafting success run function updated_crafting:craft/recipes/test
#if you want to see how to use nbt edited items in recipes have a loot ak the predicate beneath this text
execute if predicate updated_crafting:recipes/nbtex_recipe unless data storage ucp:crafting success run function updated_crafting:craft/recipes/nbtex


##Resets the storages and scores used in crafting
data remove storage ucp:crafting success
data merge storage ucp:crafting {count:[0b,0b,0b,0b,0b,0b,0b,0b,0b]}
scoreboard players reset $ucp.count.0 ucp_dummy
scoreboard players reset $ucp.count.1 ucp_dummy
scoreboard players reset $ucp.count.2 ucp_dummy
scoreboard players reset $ucp.count.3 ucp_dummy
scoreboard players reset $ucp.count.4 ucp_dummy
scoreboard players reset $ucp.count.5 ucp_dummy
scoreboard players reset $ucp.count.6 ucp_dummy
scoreboard players reset $ucp.count.7 ucp_dummy
scoreboard players reset $ucp.count.8 ucp_dummy

##Important note to predicates
#you can not inclue a count in the predicates!
#the pack will reduce the count and check if there are enough items in the recipes functions!