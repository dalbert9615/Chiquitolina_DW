# Comando para añadir una etiqueta al aldeano modificado
execute as @e[type=minecraft:villager,nbt={CustomName:"\"Dwarf\"",VillagerData:{profession:"minecraft:librarian"}}] run tag @s add renamed_dwarf

# Detectar aldeano "Dwarf" y transformarlo
execute as @e[type=minecraft:villager,nbt={CustomName:"\"Dwarf\"",VillagerData:{profession:"minecraft:librarian"}}] run data merge entity @s {Silent:1b,Invulnerable:1b,CustomName:'{"bold":true,"color":"white","text":"Dwarf"}',attributes:[{id:"minecraft:generic.movement_speed",base:0}],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:taiga"},Offers:{Recipes:[{maxUses:999999,buy:{id:"minecraft:emerald",count:1},buyB:{id:"minecraft:bread",count:1},sell:{id:"minecraft:bread",count:1,components:{"minecraft:item_name":'{"bold":true,"color":"red","text":"CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Extraña masa que compacta todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}},{maxUses:999999,buy:{id:"minecraft:emerald",count:1},buyB:{id:"minecraft:melon_slice",count:1},sell:{id:"minecraft:melon_slice",count:1,components:{"minecraft:item_name":'{"bold":true,"color":"blue","text":"ANTI CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Chiquitolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}]}}

# Otorgar el logro al jugador si el aldeano tiene la etiqueta
execute as @e[type=minecraft:villager,tag=renamed_dwarf] at @s run advancement grant @p[distance=..10] only chiquitolina:rename_dwarf




