##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

#this adv triggers the raycast from the player
advancement revoke @s only updated_crafting_crafting:advance_craftingtable_adv


#this score is to not run the cast forever (so limit how far it can travel)
scoreboard players set $updated_crafting_project_raytrace_loop ucp_dummy 0

#this starts the cast at the players eyes and executes the cast loop
execute at @s anchored eyes positioned ^ ^ ^ run function updated_crafting_crafting:advance/raytrace/loop