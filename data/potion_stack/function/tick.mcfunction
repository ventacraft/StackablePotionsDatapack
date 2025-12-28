# 1. Force check the items in the player's hands (Weapon slots)
execute as @a if items entity @s weapon.mainhand minecraft:potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s weapon.mainhand minecraft:splash_potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_cooldown
execute as @a if items entity @s weapon.mainhand minecraft:lingering_potion run item modify entity @s weapon.mainhand potion_stack:make_stackable_cooldown

execute as @a if items entity @s weapon.offhand minecraft:potion run item modify entity @s weapon.offhand potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s weapon.offhand minecraft:splash_potion run item modify entity @s weapon.offhand potion_stack:make_stackable_cooldown
execute as @a if items entity @s weapon.offhand minecraft:lingering_potion run item modify entity @s weapon.offhand potion_stack:make_stackable_cooldown

# 2. Force check the Cursor (for when you are clicking items)
execute as @a if items entity @s player.cursor minecraft:potion run item modify entity @s player.cursor potion_stack:make_stackable_no_cooldown
execute as @a if items entity @s player.cursor minecraft:splash_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown
execute as @a if items entity @s player.cursor minecraft:lingering_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown

# 3. Force check the Hotbar Slots 0-8 specifically
execute as @a run function potion_stack:apply_macro {slot:0}
execute as @a run function potion_stack:apply_macro {slot:1}
execute as @a run function potion_stack:apply_macro {slot:2}
execute as @a run function potion_stack:apply_macro {slot:3}
execute as @a run function potion_stack:apply_macro {slot:4}
execute as @a run function potion_stack:apply_macro {slot:5}
execute as @a run function potion_stack:apply_macro {slot:6}
execute as @a run function potion_stack:apply_macro {slot:7}
execute as @a run function potion_stack:apply_macro {slot:8}

# 4. Safety & Other updates
function potion_stack:update_blocks
advancement revoke @a only potion_stack:update_potions