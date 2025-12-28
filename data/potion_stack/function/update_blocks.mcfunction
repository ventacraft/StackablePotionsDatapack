# Update potions inside brewing stands
execute at @a run item modify block ~ ~ ~ container.0 potion_stack:make_stackable_no_cooldown
execute at @a run item modify block ~ ~ ~ container.1 potion_stack:make_stackable_no_cooldown
execute at @a run item modify block ~ ~ ~ container.2 potion_stack:make_stackable_no_cooldown

# Update potions dropped on the ground
execute as @e[type=item] if items entity @s contents minecraft:potion run item modify entity @s contents potion_stack:make_stackable_no_cooldown
execute as @e[type=item] if items entity @s contents minecraft:splash_potion run item modify entity @s contents potion_stack:make_stackable_cooldown
execute as @e[type=item] if items entity @s contents minecraft:lingering_potion run item modify entity @s contents potion_stack:make_stackable_cooldown