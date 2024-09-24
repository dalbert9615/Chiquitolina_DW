# Ejecutar la detección de la anti-gigantolina

execute as @a[scores={hasEatenCookie=0},nbt={SelectedItem:{id:"minecraft:cookie",components:{"minecraft:item_name":'{"bold":true,"color":"yellow","text":"ANTI GIGANTOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Gigantolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s add holdingCookie

execute as @a[scores={hasEatenCookie=0},nbt=!{SelectedItem:{id:"minecraft:cookie",components:{"minecraft:item_name":'{"bold":true,"color":"yellow","text":"ANTI GIGANTOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Gigantolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s remove holdingCookie

execute as @a[scores={hasEatenCookie=1..},tag=!holdingCookie] at @s run scoreboard players set @s hasEatenCookie 0
execute as @a[scores={hasEatenCookie=1..},tag=holdingCookie] at @s run function chiquitolina:logic/apply_anti_gigantolina