#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

danh_chien_truong_start(){
    _game_clicker(1224, 569)
    Sleep, 5000
    _game_clicker(321, 289)
}

danh_chien_truong_auto_reborn(){
    _game_clicker(310, 242)
    Sleep, 1000
}

danh_chien_truong_exit(){
    _game_clicker(646, 486)
    Sleep, 1000
}