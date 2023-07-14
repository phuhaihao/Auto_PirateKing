#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

lat_the_bai_open(){
    _game_clicker(570, 562)
}

lat_the_bai_start(){
    Loop, 200{
        if(isRunning_state == 0){
            Break
        }
        _game_clicker(639, 361)
        Sleep, 2000
        _game_clicker(553, 510)
        Sleep, 500
    }
    _game_clicker(715, 508)
    Sleep, 1000
    _game_clicker(877, 121)
}