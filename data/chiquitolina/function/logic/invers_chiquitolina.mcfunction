# Verificar si el jugador tiene la Chiquitolina (pan con nombre y características específicas)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:melon_slice",components:{"minecraft:item_name":'{"bold":true,"color":"blue","text":"ANTI CHIQUITOLINA"}',"minecraft:lore":['{"color":"gray","italic":true,"text":"Cura del increíble poder de la Chiquitolina"}'],"minecraft:rarity":"epic","minecraft:enchantment_glint_override":true}}}] at @s run scoreboard players set @s chiquitolina_timer 3599

