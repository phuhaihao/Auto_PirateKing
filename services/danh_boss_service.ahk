#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

danh_boss_Start(){
    _game_clicker(1224, 569)
    Sleep, 5000
    _game_clicker(692, 99, 1)
    Sleep, 5000
    _game_clicker(547, 170, 20)
}

danh_boss_exit(){
    _game_clicker(635, 473)
    Sleep, 5000
}