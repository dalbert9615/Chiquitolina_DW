# Solo reiniciar etiquetas y puntajes de los jugadores que han comido un melon custom
scoreboard players set @s hasEatenPumpkinCake 0
tag @s remove holdingPumpkinCake

# Aplicar efecto de agrandamiento
attribute @s minecraft:generic.scale base set 10
tellraw @s {"text":"¡Te has agrandado con la Gigantolina! Los efectos durarán por una hora."}

# control de tiempo
scoreboard players set @s chiquitolina_timer 0
scoreboard players set @s time_tick 1

# Dar logro
advancement grant @s only chiquitolina:eat_gigantolina
