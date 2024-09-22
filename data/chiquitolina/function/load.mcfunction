scoreboard objectives add chiquitolina_timer dummy "Chiquitolina Timer"
scoreboard objectives add time_tick dummy "Time Tick"
scoreboard objectives add hasEaten minecraft.used:minecraft.bread
#scoreboard objectives add holdingBread dummy

scoreboard objectives add hasEatenMelon minecraft.used:minecraft.melon_slice


# execute as @a[nbt={SelectedItem:{id:"minecraft:melon_slice",tag:{display:{Name:"{\"text\":\"Meloncito\"}"}}}}] run scoreboard players set @s holdingMeloncito 1
# execute as @a[nbt=!{SelectedItem:{id:"minecraft:melon_slice",tag:{display:{Name:"{\"text\":\"Meloncito\"}"}}}}] run scoreboard players set @s holdingMeloncito 0
# execute as @a[scores={hasEatenMelon=1.., holdingMeloncito=1}] run say El jugador ha comido un Meloncito!
# scoreboard players set @a hasEatenMelon 0
# scoreboard players set @a holdingMeloncito 0
