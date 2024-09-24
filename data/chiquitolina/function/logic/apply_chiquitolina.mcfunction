# Solo reiniciar etiquetas y puntajes de los jugadores que han comido un pan custom
scoreboard players set @s hasEatenBread 0
tag @s remove holdingBread

# Aplicar efecto de encogimiento
attribute @s minecraft:generic.scale base set 0.5
tellraw @s {"text":"¡Te has encogido con la Chiquitolina! Los efectos durarán por una hora."}

# control de tiempo
scoreboard players set @s chiquitolina_timer 0
scoreboard players set @s time_tick 1

# Dar Logro
advancement grant @s only chiquitolina:eat_chiquitolina
