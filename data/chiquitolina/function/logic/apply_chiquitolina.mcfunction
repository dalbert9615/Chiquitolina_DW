# Aplicar efecto de encogimiento
attribute @s minecraft:generic.scale base set 0.5

# Enviar un mensaje al jugador
tellraw @s {"text":"¡Te has encogido con la Chiquitolina! Durarás pequeño por una hora."}

# Establecer el marcador de tiempo de la Chiquitolina
scoreboard players set @s chiquitolina_timer 0

# Establecer el marcador de tick de tiempo
scoreboard players set @s time_tick 1

# Otorgar el avance correspondiente
advancement grant @s only chiquitolina:eat_chiquitolina
