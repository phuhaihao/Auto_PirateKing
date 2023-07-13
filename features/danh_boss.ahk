#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/danh_boss_service.ahk

_danh_boss(){
    MsgBox, Wait For Boss
    while(True){
        if(isRunning_state == 0){
            Break
        }
        FormatTime, current_time, A_now, HH:mm
        isBossRong := current_time >= "15:30" && current_time <= "15:33"
        isBossKraken := current_time >= "21:00" && current_time <= "21:03"
        isBossOar := current_time >= "22:00" && current_time <= "22:03"
        if(isBossRong == 1 || isBossKraken == 1 || isBossOar == 1)
        {
            danh_boss_Start()
            wait_for_boss := 5 * one_minute
            Sleep, %wait_for_boss%
        }
        Sleep, 1000
    }
}