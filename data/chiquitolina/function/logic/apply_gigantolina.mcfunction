# Solo reiniciar etiquetas y puntajes de los jugadores que han comido un Meloncito
scoreboard players set @s hasEatenPumpkinCake 0
tag @s remove holdingPumpkinCake

# Aplicar efecto de encogimiento
attribute @s minecraft:generic.scale base set 10

# Enviar un mensaje al jugador
tellraw @s {"text":"¡Te has agrandado con la Gigantolina! Los efectos durarán por una hora."}

# Establecer el marcador de tiempo de la Chiquitolina
scoreboard players set @s chiquitolina_timer 0

# Establecer el marcador de tick de tiempo
scoreboard players set @s time_tick 1

# Otorgar el avance correspondiente
advancement grant @s only chiquitolina:eat_gigantolina
