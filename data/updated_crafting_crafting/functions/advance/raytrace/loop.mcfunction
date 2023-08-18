##
 # loop.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#this adds one to the distance
scoreboard players add $updated_crafting_project_raytrace_loop ucp_dummy 1

#tests if the block the function is on rn is a crafting table, if it is runns the next functon aligned to the block xyz (so if im looking at a corner it wont execute there, but always in the same spot on the block)
execute if block ~ ~ ~ crafting_table align xyz run function updated_crafting_crafting:advance/raytrace/hit

#executes if the distance isnt over 100 (10 blocks)                                   moves the cast 0.1 in the direction the player is looking and reexecutes this function
execute unless score $updated_crafting_project_raytrace_loop ucp_dummy matches 100.. positioned ^ ^ ^0.1 run function updated_crafting_crafting:advance/raytrace/loop
