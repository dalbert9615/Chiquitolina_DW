# Ejecutar la detección de la Chiquitolina
execute as @a[scores={hasEaten=1..}] run function chiquitolina:logic/criteria_chiquitolina
scoreboard players set @a[scores={hasEaten=1..}] hasEaten 0

# Logica temporizador
execute as @a[scores={chiquitolina_timer=0..}] run scoreboard players add @s time_tick 1
execute as @a[scores={time_tick=20..}] run scoreboard players add @s chiquitolina_timer 1
execute as @a[scores={time_tick=20..}] run scoreboard players set @s time_tick 0
execute as @a[scores={chiquitolina_timer=3600}] run function chiquitolina:logic/restore_chiquitolina
execute as @a[scores={chiquitolina_timer=3600}] run scoreboard players reset @s chiquitolina_timer

# Detectar aldeano "Dwarf" y transformarlo - Logro
execute as @e[type=minecraft:villager,nbt={CustomName:"\"Dwarf\"",VillagerData:{profession:"minecraft:librarian"}}] run data merge entity @s {Silent:1b,Invulnerable:1b,CustomName:'{"bold":true,"color":"white","text":"Dwarf"}',attributes:[{id:"minecraft:generic.movement_speed",base:0}],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{Recipes:[{maxUses:999999,buy:{id:"minecraft:emerald",count:1},buyB:{id:"minecraft:bread",count:1},sell:{id:"minecraft:bread",count:1,components:{"minecraft:item_name":'{"bold":true,"color":"red","text":"CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Extraña masa que compacta todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}]}}
execute as @e[type=minecraft:villager,nbt={CustomName:"\"Dwarf\"",VillagerData:{profession:"minecraft:librarian"}}] at @s run advancement grant @p only chiquitolina:rename_dwarf