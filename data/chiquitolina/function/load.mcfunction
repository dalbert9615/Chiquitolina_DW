# contadores de tiempo chiquitolina
scoreboard objectives add chiquitolina_timer dummy
scoreboard objectives add time_tick dummy

# contadores deteccion item custom -> chiquitolina
scoreboard objectives add hasEatenBread minecraft.used:minecraft.bread
scoreboard players set @a hasEatenBread 0

# contadores deteccion item custom -> anti-chiquitolina
scoreboard objectives add hasEatenMelon minecraft.used:minecraft.melon_slice
scoreboard players set @a hasEatenMelon 0

# contadores deteccion item custom -> gigantolina
scoreboard objectives add hasEatenPumpkinCake minecraft.used:minecraft.pumpkin_pie
scoreboard players set @a hasEatenPumpkinCake 0

# contadores deteccion item custom -> anti-gigantolina
scoreboard objectives add hasEatenCookie minecraft.used:minecraft.cookie
scoreboard players set @a hasEatenCookie 0
