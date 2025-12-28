# Fix containers the player is looking at (up to 5 blocks away)
execute as @a at @s anchored eyes positioned ^ ^ ^1 run function potion_stack:fix_chest
execute as @a at @s anchored eyes positioned ^ ^ ^2 run function potion_stack:fix_chest
execute as @a at @s anchored eyes positioned ^ ^ ^3 run function potion_stack:fix_chest
execute as @a at @s anchored eyes positioned ^ ^ ^4 run function potion_stack:fix_chest
execute as @a at @s anchored eyes positioned ^ ^ ^5 run function potion_stack:fix_chest

# 1. Update Main and off hand
execute as @a if items entity @s weapon.mainhand minecraft:potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s weapon.mainhand minecraft:splash_potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_cooldown
execute as @a if items entity @s weapon.mainhand minecraft:lingering_potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_cooldown

execute as @a if items entity @s weapon.offhand minecraft:potion run item modify entity @s weapon.offhand potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s weapon.offhand minecraft:splash_potion run item modify entity @s weapon.offhand potion_stack:make_stackable_cooldown
execute as @a if items entity @s weapon.offhand minecraft:lingering_potion run item modify entity @s weapon.offhand potion_stack:make_stackable_cooldown

#  Update Cursor
execute as @a if items entity @s player.cursor minecraft:potion run item modify entity @s player.cursor potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s player.cursor minecraft:splash_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown
execute as @a if items entity @s player.cursor minecraft:lingering_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown

# 3Update slot 0-8
execute as @a run function potion_stack:apply_macro {slot:0}
execute as @a run function potion_stack:apply_macro {slot:1}
execute as @a run function potion_stack:apply_macro {slot:2}
execute as @a run function potion_stack:apply_macro {slot:3}
execute as @a run function potion_stack:apply_macro {slot:4}
execute as @a run function potion_stack:apply_macro {slot:5}
execute as @a run function potion_stack:apply_macro {slot:6}
execute as @a run function potion_stack:apply_macro {slot:7}
execute as @a run function potion_stack:apply_macro {slot:8}

# Other Updates
function potion_stack:update_blocks
advancement revoke @a only potion_stack:update_potions