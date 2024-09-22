# Ejecutar la detección de la Chiquitolina
execute as @a[scores={hasEatenBread=0},nbt={SelectedItem:{id:"minecraft:bread",components:{"minecraft:item_name":'{"bold":true,"color":"red","text":"CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Extraña masa que compacta todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s add holdingBread

execute as @a[scores={hasEatenBread=0},nbt=!{SelectedItem:{id:"minecraft:bread",components:{"minecraft:item_name":'{"bold":true,"color":"red","text":"CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Extraña masa que compacta todo el valor del usuario"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] run tag @s remove holdingBread

execute as @a[scores={hasEatenBread=1..},tag=!holdingBread] at @s run scoreboard players set @s hasEatenBread 0
execute as @a[scores={hasEatenBread=1..},tag=holdingBread] at @s run function chiquitolina:logic/apply_chiquitolina