#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./services/lat_the_bai_service.ahk

_lat_the_bai(){
    pos1 := "376, 45"
    pos2 := "1101, 245"
    _search_and_click("lat_bai", 1, pos1, pos2)
    Sleep, 1000
    lat_the_bai_open()
    Sleep, 1000
    lat_the_bai_start()
}