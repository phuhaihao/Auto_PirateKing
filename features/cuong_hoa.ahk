#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./utils/search_and_click.ahk

_cuong_hoa(count_cuong_hoa){
    _search_and_click("cuong_hoa", count_cuong_hoa)
}