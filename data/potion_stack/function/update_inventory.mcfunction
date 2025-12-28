# Player Inventory
function potion_stack:apply_macro {slot:9}
function potion_stack:apply_macro {slot:10}
function potion_stack:apply_macro {slot:11}
function potion_stack:apply_macro {slot:12}
function potion_stack:apply_macro {slot:13}
function potion_stack:apply_macro {slot:14}
function potion_stack:apply_macro {slot:15}
function potion_stack:apply_macro {slot:16}
function potion_stack:apply_macro {slot:17}
function potion_stack:apply_macro {slot:18}
function potion_stack:apply_macro {slot:19}
function potion_stack:apply_macro {slot:20}
function potion_stack:apply_macro {slot:21}
function potion_stack:apply_macro {slot:22}
function potion_stack:apply_macro {slot:23}
function potion_stack:apply_macro {slot:24}
function potion_stack:apply_macro {slot:25}
function potion_stack:apply_macro {slot:26}
function potion_stack:apply_macro {slot:27}
function potion_stack:apply_macro {slot:28}
function potion_stack:apply_macro {slot:29}
function potion_stack:apply_macro {slot:30}
function potion_stack:apply_macro {slot:31}
function potion_stack:apply_macro {slot:32}
function potion_stack:apply_macro {slot:33}
function potion_stack:apply_macro {slot:34}
function potion_stack:apply_macro {slot:35}

execute as @s if items entity @s player.cursor minecraft:potion run item modify entity @s player.cursor potion_stack:make_stackable_no_cooldown
execute as @s if items entity @s player.cursor minecraft:splash_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown
execute as @s if items entity @s player.cursor minecraft:lingering_potion run item modify entity @s player.cursor potion_stack:make_stackable_cooldown

advancement revoke @s only potion_stack:update_potions