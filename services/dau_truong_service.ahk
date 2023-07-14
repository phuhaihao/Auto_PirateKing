#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

_mua_luot_dau_truong(){
    Loop, 100{
        if(isRunning_state == 0){
            Break
        }
        _game_clicker(751, 380)
        _game_clicker(585, 403)
    }
}

_danh_dau_truong(){
    Loop, 100{
        if(isRunning_state == 0){
            Break
        }
        _game_clicker(768, 291)
        Sleep, 4000
        _game_clicker(1025, 669)
        Sleep, 2000
        _game_clicker(677, 501)
        Sleep, 2000
    }
    _game_clicker(1206, 62)
    Sleep, 1000
}
