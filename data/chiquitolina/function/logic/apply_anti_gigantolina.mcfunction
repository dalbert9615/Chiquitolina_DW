scoreboard players set @s hasEatenCookie 0
execute if score @s chiquitolina_timer matches ..3600 run scoreboard players set @s chiquitolina_timer 3599
execute if score @s chiquitolina_timer matches ..3600 run advancement grant @s only chiquitolina:eat_anti_gigantolina
