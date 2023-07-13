#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./libs/utf8_encoder.ahk

_gui_text(content, PositionX, PositionY){
    content := Utf8Encode(content)
    PositionX := PositionX - 30
    Gui Add, Text, x%PositionX% y%PositionY% w115 h30 +0x200, %content%
}