#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include, "./features/cuong_hoa.ahk"

cuong_hoa_btn_event:
    _cuong_hoa()
return