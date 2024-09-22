# Ejecutar la detección de la Chiquitolina
execute as @a[scores={hasEatenPumpkinCake=0},nbt={SelectedItem:{id:"minecraft:pumpkin_pie",components:{"minecraft:item_name":'{"bold":true,"color":"dark_purple","text":"GIGANTOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Curioso pastel que engrande todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s add holdingPumpkinCake


execute as @a[scores={hasEatenPumpkinCake=0},nbt=!{SelectedItem:{id:"minecraft:pumpkin_pie",components:{"minecraft:item_name":'{"bold":true,"color":"dark_purple","text":"GIGANTOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Curioso pastel que engrande todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s remove holdingPumpkinCake

execute as @a[scores={hasEatenPumpkinCake=1..},tag=!holdingPumpkinCake] at @s run scoreboard players set @s hasEatenPumpkinCake 0
execute as @a[scores={hasEatenPumpkinCake=1..},tag=holdingPumpkinCake] at @s run function chiquitolina:logic/apply_gigantolina