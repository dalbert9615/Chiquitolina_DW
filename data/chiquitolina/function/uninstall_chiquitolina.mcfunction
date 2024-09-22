execute at @a run function chiquitolina:logic/restore_chiquitolina

schedule clear chiquitolina:detectors/detect_used_anti_chiquitolina
schedule clear chiquitolina:detectors/detect_used_chiquitolina
schedule clear chiquitolina:detectors/detect_villager
schedule clear chiquitolina:detectors/timer_handle

scoreboard objectives remove chiquitolina_timer
scoreboard objectives remove time_tick
scoreboard objectives remove hasEatenBread
scoreboard objectives remove holdingBread
scoreboard objectives remove hasEatenMelon
scoreboard objectives remove holdingMelon

tellraw @a {"text":"Datapack Chiquitolina desinstalado.","color":"red","bold":true}
