#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include ./libs/utf8_encoder.ahk
#Include ./features/cuong_hoa.ahk

_gui_button(content, xPos, yPos, event := ""){
    content := Utf8Encode(content)
    if(event == ""){
        Gui Add, Button, x%xPos% y%yPos% w80 h23, &%content%
    }else{
        Gui Add, Button, x%xPos% y%yPos% w80 h23 g%event%, &%content%
    }

}
