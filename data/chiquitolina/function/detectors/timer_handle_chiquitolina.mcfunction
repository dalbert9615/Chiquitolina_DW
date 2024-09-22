# Logica temporizador
execute as @a[scores={chiquitolina_timer=0..}] run scoreboard players add @s time_tick 1
execute as @a[scores={time_tick=20..}] run scoreboard players add @s chiquitolina_timer 1
execute as @a[scores={time_tick=20..}] run scoreboard players set @s time_tick 0
execute as @a[scores={chiquitolina_timer=3600..}] at @s run function chiquitolina:logic/restore_chiquitolina
execute as @a[scores={chiquitolina_timer=3600..}] run scoreboard players reset @s chiquitolina_timer

