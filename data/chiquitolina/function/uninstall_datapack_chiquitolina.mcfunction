execute as @a run attribute @s generic.scale base set 1

schedule clear chiquitolina:detectors/detect_used_anti_chiquitolina
schedule clear chiquitolina:detectors/detect_used_chiquitolina
schedule clear chiquitolina:detectors/timer_handle_chiquitolina
schedule clear chiquitolina:detectors/detect_used_anti_gigantolina
schedule clear chiquitolina:detectors/detect_used_gigantolina
schedule clear chiquitolina:detectors/detect_villager

scoreboard objectives remove chiquitolina_timer
scoreboard objectives remove time_tick
scoreboard objectives remove hasEatenBread
scoreboard objectives remove hasEatenMelon
scoreboard objectives remove hasEatenPumpkinCake
scoreboard objectives remove hasEatenCookie

tellraw @a {"text":"Datapack Chiquitolina desinstalado.","color":"red","bold":true}