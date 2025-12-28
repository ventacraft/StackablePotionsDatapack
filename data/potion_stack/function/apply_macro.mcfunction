# Check the inventory slot (for the main bag)
$execute if items entity @s inventory.$(slot) minecraft:splash_potion run item modify entity @s inventory.$(slot) potion_stack:make_stackable_cooldown
$execute if items entity @s inventory.$(slot) minecraft:lingering_potion run item modify entity @s inventory.$(slot) potion_stack:make_stackable_cooldown
$execute if items entity @s inventory.$(slot) minecraft:potion run item modify entity @s inventory.$(slot) potion_stack:make_stackable_no_cooldown

# Check the Hotbar slot specifically by container (this fixes the hotbar bug)
$execute if items entity @s container.$(slot) minecraft:splash_potion run item modify entity @s container.$(slot) potion_stack:make_stackable_cooldown
$execute if items entity @s container.$(slot) minecraft:lingering_potion run item modify entity @s container.$(slot) potion_stack:make_stackable_cooldown
$execute if items entity @s container.$(slot) minecraft:potion run item modify entity @s container.$(slot) potion_stack:make_stackable_no_cooldown