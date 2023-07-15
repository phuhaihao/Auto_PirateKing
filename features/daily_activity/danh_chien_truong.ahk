#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/danh_chien_truong_service.ahk

_danh_chien_truong(){
    while(True){
        if(isRunning_state == 0){
            Break
        }
        FormatTime, current_time, A_now, HH:mm
        isBattleRound1 := current_time >= "19:45" && current_time <= "19:46"
        isBattleRound2 := current_time >= "20:05" && current_time <= "20:06"

        if(isBattleRound1){
            danh_chien_truong_start()
            While(True){
                isBattleRound1End := current_time >= "20:00" && current_time <= "20:01"
                if(isBattleRound1End){
                    danh_chien_truong_exit()
                    break
                }
                danh_chien_truong_auto_reborn()
            }
        }

        if(isBattleRound2){
            danh_chien_truong_start()
            While(True){
                isBattleRound2End := current_time >= "20:20" && current_time <= "20:25"
                if(isBattleRound2End){
                    danh_chien_truong_exit()
                    break
                }
                danh_chien_truong_auto_reborn()
            }
        }

        isBattleRound2End := current_time >= "20:20" && current_time <= "20:25"
        if(isBattleRound2End){
            break
        }
        Sleep, 1000
    }
}