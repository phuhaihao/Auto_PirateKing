#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%\utils\search_and_click.ahk

_test_click(win_title){
    pos1 := "376, 45"
    pos2 := "1101, 245"
    _search_and_click(win_title, "Capture.PNG")
}