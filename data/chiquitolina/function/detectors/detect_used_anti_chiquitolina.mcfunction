# Ejecutar la detección de la anti-chiquitolina

execute as @a[scores={hasEatenMelon=0},nbt={SelectedItem:{id:"minecraft:melon_slice",components:{"minecraft:item_name":'{"bold":true,"color":"blue","text":"ANTI CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Chiquitolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s add holdingMelon

execute as @a[scores={hasEatenMelon=0},nbt=!{SelectedItem:{id:"minecraft:melon_slice",components:{"minecraft:item_name":'{"bold":true,"color":"blue","text":"ANTI CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Chiquitolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s remove holdingMelon

execute as @a[scores={hasEatenMelon=1..},tag=!holdingMelon] at @s run scoreboard players set @s hasEatenMelon 0
execute as @a[scores={hasEatenMelon=1..},tag=holdingMelon] at @s run function chiquitolina:logic/apply_anti_chiquitolina