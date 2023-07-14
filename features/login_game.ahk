#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/login_game_service.ahk

_login_game(){
    _open_game()
    _login_game_start()
}