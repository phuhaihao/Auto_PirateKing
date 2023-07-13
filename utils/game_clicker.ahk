#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./libs/control_click.ahk

_game_clicker(x, y, count_click = 1){
    ControlClick_UDF(win_title, x, y, count_click)
    ; ControlClick_UDF(win_title, 5, 30)
}