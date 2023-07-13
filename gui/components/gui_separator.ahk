#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

_gui_separator(yPostion){
    Gui Add, Text, x0 y%yPostion% w500 h2 +0x10
}