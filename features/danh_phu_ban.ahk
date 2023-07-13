#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

_danh_phu_ban(count_tan_cong){
    Loop, %count_tan_cong%{
        if(isRunning_state == 0){
            Break
        }
        _game_clicker(851, 542)
        Sleep, 2500
        _game_clicker(701, 527)
    }
}