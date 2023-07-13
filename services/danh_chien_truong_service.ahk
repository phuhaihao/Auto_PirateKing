#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/game_clicker.ahk

danh_chien_truong_start(){
    _game_clicker(1224, 569)
    Sleep, 5000
    ; click to auto attack
    _game_clicker(1224, 569)
}

danh_chien_truong_auto_reborn(){
    _game_clicker(1224, 569)
    Sleep, 1000
}

danh_chien_truong_exit(){
    ; exit chien truong
    _game_clicker(1224, 569)
    Sleep, 1000
}