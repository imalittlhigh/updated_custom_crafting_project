##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

advancement revoke @s only updated_crafting:pressed_button

execute at @e[type=interaction,tag=updated_crafting.interaction.table_button,nbt={interaction:{}}] run playsound block.stone_button.click_on block @s ~ ~ ~ 0.5 0 0.5

execute as @e[type=interaction,tag=updated_crafting.interaction.table_button] if entity @s[nbt={interaction:{}}] at @s positioned ~ ~-1 ~ run function updated_crafting:craft/recipes

execute as @e[type=interaction,tag=updated_crafting.interaction.table_button] if entity @s[nbt={interaction:{}}] run data remove entity @s interaction

